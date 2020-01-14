#!/usr/bin/env node
/**
 * node analysis.js <_book文件夹目录> <baidu统计链接>
 */
const fs = require('fs')
const path = require('path')

const DOC_PATH = process.argv[2]
const BAIDU_HM_JS = process.argv[3]

function insertScript (filePath) {
  fs.readFile(filePath, function (err, data) {
    if (err) {
      console.error(err)
      return
    }
    let pageContent = data.toString()
    let indexOfBody = pageContent.indexOf('</body>')
    let pageContentPre = pageContent.substring(0, indexOfBody)
    let pageContentNext = pageContent.substring(indexOfBody)
    let newPageContent = `${pageContentPre}
    <script>
    var _hmt = _hmt || [];
    (function() {
      var hm = document.createElement("script");
      hm.src = "${BAIDU_HM_JS}";
      var s = document.getElementsByTagName("script")[0]; 
      s.parentNode.insertBefore(hm, s);
    })();
    </script>
    ${pageContentNext}`
    fs.writeFile(filePath, newPageContent, function (err) {
      if (err) {
        console.error(err)
        console.error(`fail to insert ${filePath}`)
      } else {
        console.log(`success to insert ${filePath}`)
      }
    })
  })
}

function insertScripts (filePath) {
  fs.readdir(filePath, function (err, files) {
    if (err) {
      console.error(err)
      return
    }

    files.forEach(function (fileName) {
      let fileFullPath = path.join(filePath, fileName)
      fs.stat(fileFullPath, function (err, stats) {
        if (err) {
          console.error(err)
          return
        }
        let isFile = stats.isFile() //是文件
        if (isFile) {
          if (fileName.indexOf('html') !== -1) {
            insertScript(fileFullPath)
          }
        }
        let isDir = stats.isDirectory() //是文件夹
        if (isDir) {
          insertScripts(fileFullPath)
        }
      })
    })
  })
}

function main () {
  insertScripts(DOC_PATH)
}

main()
