import 'website.dart';
import 'dart:io';
import 'package:serve/serve.dart';

void buildWebsite(Website website) async {
  String buildDir = "build/";
  String outputDir = "${buildDir}output/";
  stdout.write("Checking if $buildDir exists... ");
  if (! await Directory(buildDir).exists()) {
    stdout.write("It does not\nCreating $buildDir...\n");
    await Directory(buildDir).create();
  }
  else {
    stdout.write("It does\n");
    for (var entry in await Directory(buildDir).list().toList()) {
      if (entry is File) {
        stdout.write("Removing ${entry.path}...\n");
        await File(entry.path).delete(recursive: true);
      }
      if (entry is Directory) {
        if (entry.path != "${buildDir}node_modules") {
          stdout.write("Removing ${entry.path}...\n");
          await Directory(entry.path).delete(recursive: true);
        }
      }
    }
  }
  await Directory(outputDir).create(recursive: true);
  for (var page in website.listOfHtml) {
    final newFile = await File(outputDir + page.path).create(recursive: true);
    stdout.write("Creating ${page.path}...\n");
    await newFile.writeAsString(page.toHTML());
  }
  final newStyle = await File("${buildDir}input.css").create(recursive: true);
  stdout.write("Creating stylesheet...\n");
  await newStyle.writeAsString("""@tailwind base;
@tailwind components;
@tailwind utilities;""");
  final newConfig = await File("${buildDir}tailwind.config.js").create(recursive: true);
  stdout.write("Creating TailwindCSS config file...\n");
  await newConfig.writeAsString("""/** @type {import('tailwindcss').Config} */

const colors = require('tailwindcss/colors')

module.exports = {
  content: ["./**/*.html"],
  theme: {
    extend: {},
  },
  safelist: [{
    pattern: /hljs+/,
  }],
  plugins: [],darkMode: "class",
  theme: {
    hljs: {
      theme: 'night-owl',
    },
    extend: {
      colors: {
        amber: colors.amber,
        black: colors.black,
        blue: colors.blue,
        blueGray: colors.blueGray,
        coolGray: colors.coolGray,
        cyan: colors.cyan,
        emerald: colors.emerald,
        fuchsia: colors.fuchsia,
        // gray: colors.gray,
        green: colors.green,
        indigo: colors.indigo,
        lightBlue: colors.lightBlue,
        lime: colors.lime,
        orange: colors.orange,
        pink: colors.pink,
        purple: colors.purple,
        red: colors.red,
        rose: colors.rose,
        sky: colors.sky,
        teal: colors.teal,
        trueGray: colors.trueGray,
        violet: colors.violet,
        warmGray: colors.warmGray,
        white: colors.white,
        yellow: colors.yellow,
      },
      typography: (theme) => ({
        dark: {
          css: [
            {
              color: theme("colors.gray.400"),
              '[class~="lead"]': {
                color: theme("colors.gray.300"),
              },
              a: {
                color: theme("colors.white"),
              },
              strong: {
                color: theme("colors.white"),
              },
              "ol > li::before": {
                color: theme("colors.gray.400"),
              },
              "ul > li::before": {
                backgroundColor: theme("colors.gray.600"),
              },
              hr: {
                borderColor: theme("colors.gray.200"),
              },
              blockquote: {
                color: theme("colors.gray.200"),
                borderLeftColor: theme("colors.gray.600"),
              },
              h1: {
                color: theme("colors.white"),
              },
              h2: {
                color: theme("colors.white"),
              },
              h3: {
                color: theme("colors.white"),
              },
              h4: {
                color: theme("colors.white"),
              },
              "figure figcaption": {
                color: theme("colors.gray.400"),
              },
              code: {
                color: theme("colors.white"),
              },
              "a code": {
                color: theme("colors.white"),
              },
              pre: {
                color: theme("colors.gray.200"),
                backgroundColor: theme("colors.gray.800"),
              },
              thead: {
                color: theme("colors.white"),
                borderBottomColor: theme("colors.gray.400"),
              },
              "tbody tr": {
                borderBottomColor: theme("colors.gray.600"),
              },
            },
          ],
        },
      }),
    },
  },
  variants: {
    extend: {
      typography: ["dark"],
    },
  },
  plugins: [require("@tailwindcss/typography"), require('tailwind-highlightjs')],
}""");
  stdout.write("Copying files from the static directory\n");
  if (await Directory("static").exists()) {
    final staticDir = Directory("static");
    for (var entry in await staticDir.list(recursive: true).toList()) {
      var newPathHelp = entry.path.split("/")..removeAt(0);
      String newPath = outputDir + newPathHelp.join("/");
      if (entry is Directory) {
        stdout.write("Creating $newPath...\n");
        await Directory(newPath).create(recursive: true);
      }
      if (entry is File) {
        stdout.write("Creating $newPath...\n");
        var newDirPathHelp = newPath.split("/");
        newDirPathHelp.removeLast();
        var newDirPath = newDirPathHelp.join("/");
        if (! await Directory(newDirPath).exists()) {
          Directory(newDirPath).create(recursive: true);
        }
        await File(entry.path).copy(newPath);
      }
    }
  }
  stdout.write("Checking if TailwindCSS is installed... ");
  if (!(await Directory("${buildDir}node_modules/tailwindcss").exists())) {
    stdout.write("It is not\nInstalling TailwindCSS...\n");
    await Process.run("npm", ["install", "-D", "tailwindcss"], workingDirectory: buildDir);
  }
  else {
    stdout.write("It is\n");
  }
  stdout.write("Checking if @tailwindcss/typography is installed... ");
  if (!(await Directory("${buildDir}node_modules/@tailwindcss/typography").exists())) {
    stdout.write("It is not\nInstalling @tailwindcss/typography...\n");
    await Process.run("npm", ["install", "-D", "@tailwindcss/typography"], workingDirectory: buildDir);
  }
  else {
    stdout.write("It is\n");
  }
  stdout.write("Running npx tailwindcss init...\n");
  await Process.run("npx", ["tailwindcss", "init"], workingDirectory: buildDir);
  stdout.write("Running npx tailwindcss -i input.css -o ${outputDir.replaceAll(buildDir, "")}style/tailwind.css...\n");
  await Process.run("npx", ["tailwindcss", "-i", "input.css", "-o", "${outputDir.replaceAll(buildDir, "")}style/tailwind.css"], workingDirectory: buildDir);

  stdout.write("Serving website at localhost:1313...\n");
  await serve(
    Conf([outputDir], ["/"], host: "localhost", port: 1313)
  );
}
