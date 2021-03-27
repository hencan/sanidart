// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import "bootstrap/dist/js/bootstrap"
import "bootstrap/dist/css/bootstrap"


// import "masonry-layout"
// import "imagesloaded"

// import "croppie"
// import "quill"

const Masonry = require("masonry-layout")
const imagesLoaded = require('imagesloaded')
const Quill = require("quill")

Rails.start()
Turbolinks.start()
ActiveStorage.start()

require("trix")
require("@rails/actiontext")
require("@popperjs/core")

document.addEventListener("turbolinks:load", () => {

    if (document.getElementById('homepage')) {
        document.getElementById('goto_top').style.display = "block"
        document.getElementById('goto_work_btn').style.display = "block"
    } else {
        document.getElementById('goto_top').style.display = "none"
        document.getElementById('goto_work_btn').style.display = "none"
    }

    if (document.querySelector('.grid_masonry')) {
        var elem = document.querySelector('.grid_masonry');
        var msnry = new Masonry(elem, {
            // options
            percentPosition: true
        });

        imagesLoaded(elem, function (instance) {
            msnry.layout();
        });
    }

    if (document.getElementById("works_filters")) {
        document.getElementById("works_filters").addEventListener("ajax:success", () => {

            var apply_masonry = setInterval(wait_load, 500);

            function wait_load() {

                if (document.querySelector('.grid_masonry')) {
                    var elem = document.querySelector('.grid_masonry');
                    var msnry = new Masonry(elem, {
                        // options
                        percentPosition: true
                    });

                    imagesLoaded(elem, function (instance) {
                        msnry.layout();
                    });
                    console.log('masonry aplicado ao id works')

                    clearInterval(apply_masonry)
                } else {
                    console.log('Carregando .grid_mansory')
                }
            }
        })
    }

    if (document.getElementById("quill_editor")) {
        var toolbarOptions = [
            [{ header: [1, false] }, { 'color': [] }],
            ['bold', 'italic', 'underline'],        // toggled buttons
            [{ 'align': [] }, { 'indent': '-1' }, { 'indent': '+1' }],          // outdent/indent
            [{ 'list': 'ordered' }, { 'list': 'bullet' }],
            ['blockquote', 'link', 'image', 'video'],
            // [{ 'align': [] }],
            // [{ 'color': [] }], 
            // ['clean']                                         // remove formatting button
            // ['blockquote', 'code-block'],
            //[{ 'header': 3 }, { 'header': 4 }],               // custom button values
            // [{ 'header': [1, 2, 3, false] }],
            // [{ 'script': 'sub' }, { 'script': 'super' }],      // superscript/subscript
            // [{ 'direction': 'rtl' }],                         // text direction
            // [{ 'size': ['small', false, 'large', 'huge'] }],  // custom dropdown
            // [{ 'color': [] }, { 'background': [] }],          // dropdown with defaults from theme
            // [{ 'font': [] }],
        ];
        var quill = new Quill('#quill_editor', {
            // debug: 'info',
            modules: {
                toolbar: toolbarOptions
            },
            placeholder: 'Compose an epic...',
            theme: 'snow'  // or 'bubble'
        });
    }

})


