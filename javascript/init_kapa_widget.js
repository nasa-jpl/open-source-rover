document.addEventListener("DOMContentLoaded", function () {
  var script = document.createElement("script");
  script.src = "https://widget.kapa.ai/kapa-widget.bundle.js";
  script.setAttribute("data-website-id", "4980afc4-f36c-47ba-86ca-d8683cfad1ce");
  script.setAttribute("data-project-name", "JPL Open Source Rover ");
  script.setAttribute("data-project-color", "#25292F");
  script.setAttribute("data-project-logo", "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/NASA_logo.svg/960px-NASA_logo.svg.png");
  script.setAttribute("data-button-position-bottom", "120px");
  script.setAttribute("data-view-mode", "sidebar");
  script.setAttribute("data-example-questions", "How do I launch the rover software stack?,How do I calibrate the corner servo motors?");
  script.setAttribute("data-mcp-enabled", "true");
  script.setAttribute("data-mcp-server-url", "https://osr.mcp.kapa.ai");
  script.setAttribute("data-modal-disclaimer", "**What is this?** This is a custom AI Assistant for the JPL Open Source Rover project, with access to all developer docs, and GitHub source code.");
  script.setAttribute("data-modal-title", "JPL Open Source Rover - AI Assistant");
  script.setAttribute("data-modal-size", "600px");
  script.async = true;
  document.head.appendChild(script);
});
