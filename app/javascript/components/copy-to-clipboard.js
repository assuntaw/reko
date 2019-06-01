const copyToClipboard = function(elementId) {
  console.log("---TRIGGERED : copyToClipboard");

  document.getElementById("bttnCopyVisitorLink").addEventListener("click", (event) => {
    var input = document.getElementById("visitorLink");
    var isiOSDevice = navigator.userAgent.match(/ipad|iphone/i);

    if (isiOSDevice) {
      var editable = input.contentEditable;
      var readOnly = input.readOnly;

      input.contentEditable = true;
      input.readOnly = false;

      var range = document.createRange();
      range.selectNodeContents(input);

      var selection = window.getSelection();
      selection.removeAllRanges();
      selection.addRange(range);

      input.setSelectionRange(0, 999999);
      input.contentEditable = editable;
      input.readOnly = readOnly;
    } else {
      input.select();
    }

    document.execCommand('copy');
    const bttnCopyLink = document.getElementById("bttnCopyVisitorLink");
    bttnCopyLink.innerText = "copied!";
    bttnCopyLink.classList.remove("b-violet");
    bttnCopyLink.classList.add("b-dark-green");
    bttnCopyLink.setAttribute("style", "transition: ease 0.5s;");
    setTimeout(() => {
      bttnCopyLink.innerText = "Copy Invite Link";
      bttnCopyLink.classList.add("b-violet");
      bttnCopyLink.classList.remove("b-dark-green");
    }, 2000);
  });
}

export { copyToClipboard }
