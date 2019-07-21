function pNpWatcher() {

    resetWatchers();

    (function (history) {
        var pushState = history.pushState;
        history.pushState = function (state) {
            if (myTimer) {
                clearTimeout(myTimer);
            }
            if (typeof history.onpushstate == "function") {
                history.onpushstate({ state: state });
            }
            // ... whatever else you want to do
            // maybe call onhashchange e.handler
            return pushState.apply(history, arguments);
        };
    })(window.history);

    window.onpopstate = history.onpushstate = function (e) {
        resetWatchers();
    }

    function resetWatchers() {
        myTimer = setTimeout(function () {
            watchForms();
        }, 1000);
    }

    function watchForms() {
        formIds.forEach(formId => {
            form = document.getElementById(formId);
            if (form) {
                console.log('watching', formId);
                form.removeAttribute('action')
                form._onsubmit = form.onsubmit;
                form.onsubmit = (e) => {
                    processForm(formId);
                    form._onsubmit && form._onsubmit(e);
                    // return false;
                }
            }
        });
    }

    function processForm(id) {
        let elements = document.getElementById(id).elements;
        let formData = {};
        for (let i = 0; i < elements.length; i++) {
            if (elements[i].id || elements[i].name) {
                if (elements[i].type == 'file') {
                    formData[elements[i].id || elements[i].name] = elements[i].files;
                } else {
                    formData[elements[i].id || elements[i].name] = elements[i].value;
                }
            }
        }
        submitFormToPnPServers(id, formData);
    }

    function submitFormToPnPServers(id, formJson) {
        // TODO: ajax
        console.log(id, formJson);
        var data = new FormData();
        data.append("$id", id);

        for (let key in formJson) {
            if (formJson[key] instanceof FileList) {

                for (let i = 0; i < formJson[key].length; i++) {
                    data.append(key + '$file' + i, formJson[key][i]);
                }

            } else {
                data.append(key, formJson[key]);
            }
        }

        var xhr = new XMLHttpRequest();
        xhr.withCredentials = true;

        xhr.addEventListener("readystatechange", function () {
            if (this.readyState === 4) {
                console.log(this.responseText);
            }
        });

        xhr.open("POST", "https://us-central1-sagar-panchasara.cloudfunctions.net/uploadFile");
        // xhr.setRequestHeader("Content-Type", "multipart/form-data;");

        xhr.send(data);
    }

}

let myTimer;
const formIds = ['myForms'];
pNpWatcher();