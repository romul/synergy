// Brunch automatically concatenates all files in your
// watched paths. Those paths can be configured at
// config.paths.watched in "brunch-config.js".
//
// However, those files will only be executed if
// explicitly imported. The only exception are files
// in vendor, which are never wrapped in imports and
// therefore are always executed.

// Import dependencies
//
// If you no longer want to use a dependency, remember
// to also remove its path from "config.paths.watched".
import "phoenix_html"

// Import local files
//
// Local files can be imported directly using relative
// paths "./socket" or full ones "web/static/js/socket".

// import socket from "./socket"


$(document).ready(function() {


/*
'use strict';

var set_taxon_select = function(selector, is_multiple){
  if ($(selector).length > 0) {
    $(selector).select2({
      placeholder: Spree.translations.taxon_placeholder,
      multiple: is_multiple,
      initSelection: function (element, callback) {
        var url = Spree.url(Spree.routes.taxons_search, {
          ids: element.val()
        });
        return $.getJSON(url, null, function (data) {
          return callback(is_multiple ? data['taxons'] : data['taxons'][0]);
        });
      },
      ajax: {
        url: Spree.routes.taxons_search,
        datatype: 'json',
        data: function (term, page) {
          return {
            per_page: 50,
            page: page,
            section: window.location.pathname.split('/')[2],
            without_children: true,
            q: {
              name_cont: term
            },
            token: Spree.api_key
          };
        },
        results: function (data, page) {
          var more = page < data.pages;
          return {
            results: data['taxons'],
            more: more
          };
        }
      },
      formatResult: function (taxon) {
        return taxon.pretty_name;
      },
      formatSelection: function (taxon) {
        return taxon.pretty_name;
      }
    });
  }
}

$(document).ready(function () {
  set_taxon_select("#product_taxon_ids", true);
});

*/
});
