#!/bin/bash

sed -i 's/^USERNAME_ROUTE_FORMAT =.*$/USERNAME_ROUTE_FORMAT = \/[A-Za-z0-9\\_.\\-\\%\\u4E00-\\u9FD5\\u3400-\\u4DBF\\u{20000}-\\u{2A6DF}\\u{2A700}-\\u{2CEAF}\\uF900-\\uFAFF\\u{2F800}-\\u{2FA1D}\\uAC00-\\uD7AF\\u3040-\\u30FF\\u31F0-\\u31FF\\u3005]+\/ unless defined? USERNAME_ROUTE_FORMAT/' ../config/routes.rb
sed -i 's/^\s*username =.*$/    username = username.toString().replace(\/(?:[\\0-,\/:-@\\[-\\^`\\{-\\u3004\\u3006-\\u303F\\u3100-\\u31EF\\u3200-\\u33FF\\u4DC0-\\u4DFF\\u9FD6-\\uABFF\\uD7B0-\\uD7FF\\uE000-\\uF8FF\\uFB00-\\uFFFF]|[\\uD800-\\uD83F\\uD874-\\uD87D\\uD87F-\\uDBFF][\\uDC00-\\uDFFF]|\\uD869[\\uDEE0-\\uDEFF]|\\uD873[\\uDEB0-\\uDFFF]|\\uD87E[\\uDE1E-\\uDFFF]|[\\uD800-\\uDBFF](?![\\uDC00-\\uDFFF])|(?:[^\\uD800-\\uDBFF]|^)[\\uDC00-\\uDFFF])\/g, "");/' ../app/assets/javascripts/discourse/controllers/user-card.js.es6
sed -i 's/^\s*characters:.*$/      characters: "必须只包含中文、字母、数字和下划线"/' ../config/locales/server.zh_CN.yml
sed -i 's/^\s*must_begin_with_alphanumeric:.*$/      must_begin_with_alphanumeric: "必须以中文、字母、数字或下划线开头"/' ../config/locales/server.zh_CN.yml
sed -i 's/^\s*must_end_with_alphanumeric:.*$/      must_end_with_alphanumeric: "必须以中文、字母、数字或下划线结尾"/' ../config/locales/server.zh_CN.yml
# converted from /^@([\w\u4E00-\u9FD5\u3400-\u4DBF\u{20000}-\u{2A6DF}\u{2A700}-\u{2CEAF}\uF900-\uFAFF\u{2F800}-\u{2FA1D}\uAC00-\uD7AF\u3040-\u30FF\u31F0-\u31FF\u{1B000}-\u{1B0FF}\u3005][\w\u4E00-\u9FD5\u3400-\u4DBF\u{20000}-\u{2A6DF}\u{2A700}-\u{2CEAF}\uF900-\uFAFF\u{2F800}-\u{2FA1D}\uAC00-\uD7AF\u3040-\u30FF\u31F0-\u31FF\u{1B000}-\u{1B0FF}\u3005.-]{0,59})(?![\w\u4E00-\u9FD5\u3400-\u4DBF\u{20000}-\u{2A6DF}\u{2A700}-\u{2CEAF}\uF900-\uFAFF\u{2F800}-\u{2FA1D}\uAC00-\uD7AF\u3040-\u30FF\u31F0-\u31FF\u{1B000}-\u{1B0FF}\u3005])/iu
# by https://mothereff.in/regexpu
# see https://mathiasbynens.be/notes/javascript-unicode for more information
sed -i 's/^\s*matcher:.*$/  matcher: \/^@((?:[0-9A-Z_a-z\\u017F\\u212A\\u3005\\u3040-\\u30FF\\u31F0-\\u31FF\\u3400-\\u4DBF\\u4E00-\\u9FD5\\uAC00-\\uD7AF\\uF900-\\uFAFF]|\\uD82C[\\uDC00-\\uDCFF]|[\\uD840-\\uD868\\uD86A-\\uD872][\\uDC00-\\uDFFF]|\\uD869[\\uDC00-\\uDEDF\\uDF00-\\uDFFF]|\\uD873[\\uDC00-\\uDEAF]|\\uD87E[\\uDC00-\\uDE1D])(?:[\\-\\.0-9A-Z_a-z\\u017F\\u212A\\u3005\\u3040-\\u30FF\\u31F0-\\u31FF\\u3400-\\u4DBF\\u4E00-\\u9FD5\\uAC00-\\uD7AF\\uF900-\\uFAFF]|\\uD82C[\\uDC00-\\uDCFF]|[\\uD840-\\uD868\\uD86A-\\uD872][\\uDC00-\\uDFFF]|\\uD869[\\uDC00-\\uDEDF\\uDF00-\\uDFFF]|\\uD873[\\uDC00-\\uDEAF]|\\uD87E[\\uDC00-\\uDE1D]){0,59})(?!(?:[0-9A-Z_a-z\\u017F\\u212A\\u3005\\u3040-\\u30FF\\u31F0-\\u31FF\\u3400-\\u4DBF\\u4E00-\\u9FD5\\uAC00-\\uD7AF\\uF900-\\uFAFF]|\\uD82C[\\uDC00-\\uDCFF]|[\\uD840-\\uD868\\uD86A-\\uD872][\\uDC00-\\uDFFF]|\\uD869[\\uDC00-\\uDEDF\\uDF00-\\uDFFF]|\\uD873[\\uDC00-\\uDEAF]|\\uD87E[\\uDC00-\\uDE1D]))\/i,/' ../app/assets/javascripts/pretty-text/engines/discourse-markdown/mentions.js.es6
# converted from /^#([\w\u4E00-\u9FD5\u3400-\u4DBF\u{20000}-\u{2A6DF}\u{2A700}-\u{2CEAF}\uF900-\uFAFF\u{2F800}-\u{2FA1D}\uAC00-\uD7AF\u3040-\u30FF\u31F0-\u31FF\u{1B000}-\u{1B0FF}\u3005-]{1,50})/iu
sed -i 's/^\s*matcher:.*$/  matcher: \/^#((?:[\\-0-9A-Z_a-z\\u017F\\u212A\\u3005\\u3040-\\u30FF\\u31F0-\\u31FF\\u3400-\\u4DBF\\u4E00-\\u9FD5\\uAC00-\\uD7AF\\uF900-\\uFAFF]|\\uD82C[\\uDC00-\\uDCFF]|[\\uD840-\\uD868\\uD86A-\\uD872][\\uDC00-\\uDFFF]|\\uD869[\\uDC00-\\uDEDF\\uDF00-\\uDFFF]|\\uD873[\\uDC00-\\uDEAF]|\\uD87E[\\uDC00-\\uDE1D]){1,50})\/i,/' ../app/assets/javascripts/pretty-text/engines/discourse-markdown/category-hashtag.js.es6
