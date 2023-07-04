     document.getElementById('parseBtn').addEventListener('click', function() {
      var inputCode = document.getElementById('inputField').value;
      var outputCode = escapeHtml(inputCode);
      document.getElementById('outputField').value = outputCode;
    });

    function escapeHtml(html) {
      var txt = document.createElement('textarea');
      txt.textContent = html;
      return txt.innerHTML;
    }
 
    document.getElementById('unparseBtn').addEventListener('click', function() {
      var inputCode = document.getElementById('inputField').value;
      var outputCode = unescapeHtml(inputCode);
      document.getElementById('outputField').value = outputCode;
    });

    function unescapeHtml(html) {
      var txt = document.createElement('textarea');
      txt.innerHTML = html;
      return txt.value;
    }
