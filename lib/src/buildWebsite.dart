import 'htmlbasiccomponents/htmlbasiccomponents.dart';
import 'dart:io';

void buildWebsite(HtmlDoc website) async {
  final newFile = await File("index.html").create(recursive: true);
  await newFile.writeAsString(website.toHTML());
  final newStyle = await File("input.css").create(recursive: true);
  await newStyle.writeAsString("""@tailwind base;
@tailwind components;
@tailwind utilities;""");
  final newConfig = await File("tailwind.config.js").create(recursive: true);
  await newConfig.writeAsString("""/** @type {import('tailwindcss').Config} */

const colors = require('tailwindcss/colors')

module.exports = {
  content: ["./index.html"],
  theme: {
    extend: {},
  },
  plugins: [],darkMode: "class",
  theme: {
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
  plugins: [require("@tailwindcss/typography")],
}""");
  await Process.run("npm", ["install", "-D", "tailwindcss"]);
  await Process.run("npm", ["install", "-D", "@tailwindcss/typography"]);
  await Process.run("npx", ["tailwindcss", "init"]);
  await Process.run("npx", ["tailwindcss", "-i", "input.css", "-o", "style/tailwind.css"]);
}