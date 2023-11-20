String shortenStandardPath(String path) {
  if (path.endsWith("/index.html")) {
    return path.substring(0, path.length - 10);
  }
  else {
    return path;
  }
}