// This is autogenerated by Framer Studio


// Generated by CoffeeScript 1.8.0
(function() {
  var lookupLine, properties, _RESULT,
    __slice = [].slice;

  if (window.FramerStudio == null) {
    window.FramerStudio = {};
  }

  window.onerror = null;

  window.midiCommand = window.midiCommand || function() {};

  if (Framer.Device) {
    properties = ["deviceScale", "contentScale", "deviceType", "keyboard", "orientation", "fullScreen"];
    properties.map(function(propertyName) {
      return Framer.Device.on("change:" + propertyName, function() {
        return window._bridge("device:change");
      });
    });
  }

  _RESULT = null;

  lookupLine = function(lineNumber) {
    var char, charIndex, errorColNumber, errorLine, errorLineIndex, errorLineNumber, loc, sourceLines, _i, _len;
    sourceLines = _RESULT.js.split("\n");
    errorLineIndex = lineNumber - 1;
    errorLine = sourceLines[errorLineIndex];
    if (!errorLine) {
      return lineNumber;
    }
    errorLineNumber = 1;
    errorColNumber = 0;
    for (charIndex = _i = 0, _len = errorLine.length; _i < _len; charIndex = ++_i) {
      char = errorLine[charIndex];
      loc = _RESULT.sourceMap.sourceLocation([errorLineIndex, charIndex]);
      if (loc && loc[0] > errorLineNumber) {
        errorLineNumber = loc[0] + 1;
        errorColNumber = loc[1];
      }
    }
    console.log("lineNumber", lineNumber);
    console.log("errorLineNumber", errorLineNumber);
    return errorLineNumber;
  };

  FramerStudio.compile = function(code) {
    var e, err, errorMessage;
    console.log("FramerStudio.compile");
    window.onerror = null;
    window.onresize = null;
    try {
      _RESULT = CoffeeScript.compile(code, {
        sourceMap: true,
        filename: "generated.js"
      });
    } catch (_error) {
      e = _error;
      console.log("Compile error:", e);
      if (e instanceof SyntaxError) {
        errorMessage = e.stack;
        err = new SyntaxError(e.message);
        err.line = e.location.first_line;
        err.lineNumber = e.location.first_line;
        err.lookup = true;
        window._bridge("StudioError", {
          message: e.message,
          line: e.location.first_line,
          lineNumber: e.location.first_line,
          errorType: "compile"
        });
        throw err;
      } else {
        throw e;
      }
    }
    window.onerror = function(errorMsg, url, lineNumber) {
      var error;
      console.log.apply(console, ["Eval error:"].concat(__slice.call(arguments)));
      error = new Error(errorMsg);
      error.line = lookupLine(lineNumber);
      window._bridge("StudioError", {
        message: errorMsg,
        line: error.line,
        lineNumber: error.line,
        errorType: "eval"
      });
      throw error;
    };
    return _RESULT.js;
  };

  if (typeof window._bridge === "function") {
    window._bridge("StudioScriptLoaded");
  }

}).call(this);

// Layer info for /Users/nmoya/Dropbox/moyrilia/redbits/redbits.framer/imported/ ui-redbits/layers.json.js
// Layer info for /Users/nmoya/Dropbox/moyrilia/redbits/redbits.framer/imported/redbits/layers.json.js
window.__imported__ = window.__imported__ || {};
window.__imported__["redbits/layers.json.js"] = [
  {
    "maskFrame" : null,
    "id" : "C89F8FF8-F26C-4E34-91E6-DB4C79B12951",
    "visible" : true,
    "children" : [
      {
        "maskFrame" : null,
        "id" : "1B357EF7-1CDD-4184-B4BC-28BE2D094829",
        "visible" : false,
        "children" : [
          {
            "maskFrame" : null,
            "id" : "85DB2984-F862-44D1-8C2F-C4DCB707C0F1",
            "visible" : true,
            "children" : [

            ],
            "image" : {
              "path" : "images\/Group-85DB2984-F862-44D1-8C2F-C4DCB707C0F1.png",
              "frame" : {
                "y" : 400,
                "x" : 0,
                "width" : 613,
                "height" : 282
              }
            },
            "imageType" : "png",
            "layerFrame" : {
              "y" : 400,
              "x" : 0,
              "width" : 613,
              "height" : 282
            },
            "name" : "Group"
          }
        ],
        "image" : {
          "path" : "images\/splashScreen-1B357EF7-1CDD-4184-B4BC-28BE2D094829.png",
          "frame" : {
            "y" : 0,
            "x" : 0,
            "width" : 640,
            "height" : 1136
          }
        },
        "imageType" : "png",
        "layerFrame" : {
          "y" : 0,
          "x" : 0,
          "width" : 640,
          "height" : 1136
        },
        "name" : "splashScreen"
      },
      {
        "maskFrame" : null,
        "id" : "61EC7E9C-DAC0-47BD-BA19-006332BF6659",
        "visible" : false,
        "children" : [
          {
            "maskFrame" : null,
            "id" : "B8FF3DD5-7BA4-4518-ABC9-72A39E0B612D",
            "visible" : true,
            "children" : [
              {
                "maskFrame" : null,
                "id" : "C4B0DDF7-A8CF-4784-B4C5-787B708C47D4",
                "visible" : true,
                "children" : [

                ],
                "image" : {
                  "path" : "images\/Oval_102__Triangle_3__LAB_2-C4B0DDF7-A8CF-4784-B4C5-787B708C47D4.png",
                  "frame" : {
                    "y" : 615,
                    "x" : 74,
                    "width" : 369,
                    "height" : 369
                  }
                },
                "imageType" : "png",
                "layerFrame" : {
                  "y" : 615,
                  "x" : 74,
                  "width" : 369,
                  "height" : 369
                },
                "name" : "Oval_102__Triangle_3__LAB_2"
              },
              {
                "maskFrame" : null,
                "id" : "2B4D8C8C-E4DC-4F3A-A466-92AA0C70356E",
                "visible" : true,
                "children" : [
                  {
                    "maskFrame" : null,
                    "id" : "A1192BE3-14C2-4172-9E17-07380DCEB010",
                    "visible" : true,
                    "children" : [

                    ],
                    "image" : {
                      "path" : "images\/Rectangle_13__Oval_7-A1192BE3-14C2-4172-9E17-07380DCEB010.png",
                      "frame" : {
                        "y" : 654,
                        "x" : 267,
                        "width" : 248,
                        "height" : 285
                      }
                    },
                    "imageType" : "png",
                    "layerFrame" : {
                      "y" : 654,
                      "x" : 267,
                      "width" : 248,
                      "height" : 285
                    },
                    "name" : "Rectangle_13__Oval_7"
                  }
                ],
                "image" : {
                  "path" : "images\/Oval_103__Rectangle_13__Oval_7-2B4D8C8C-E4DC-4F3A-A466-92AA0C70356E.png",
                  "frame" : {
                    "y" : 615,
                    "x" : 204,
                    "width" : 369,
                    "height" : 369
                  }
                },
                "imageType" : "png",
                "layerFrame" : {
                  "y" : 615,
                  "x" : 204,
                  "width" : 369,
                  "height" : 369
                },
                "name" : "Oval_103__Rectangle_13__Oval_7"
              },
              {
                "maskFrame" : null,
                "id" : "B47FB2B8-4E77-4D6B-B5F7-53E7B1AF8AEC",
                "visible" : true,
                "children" : [

                ],
                "image" : {
                  "path" : "images\/Rectangle_109__Bem_vindo__Sincronize_os_seus_e-B47FB2B8-4E77-4D6B-B5F7-53E7B1AF8AEC.png",
                  "frame" : {
                    "y" : -103,
                    "x" : -106,
                    "width" : 851,
                    "height" : 1343
                  }
                },
                "imageType" : "png",
                "layerFrame" : {
                  "y" : -103,
                  "x" : -106,
                  "width" : 851,
                  "height" : 1343
                },
                "name" : "Rectangle_109__Bem_vindo__Sincronize_os_seus_e"
              }
            ],
            "image" : {
              "path" : "images\/Group-B8FF3DD5-7BA4-4518-ABC9-72A39E0B612D.png",
              "frame" : {
                "y" : -103,
                "x" : -106,
                "width" : 851,
                "height" : 1343
              }
            },
            "imageType" : "png",
            "layerFrame" : {
              "y" : -103,
              "x" : -106,
              "width" : 851,
              "height" : 1343
            },
            "name" : "Group"
          }
        ],
        "image" : {
          "path" : "images\/bemvindoA-61EC7E9C-DAC0-47BD-BA19-006332BF6659.png",
          "frame" : {
            "y" : 0,
            "x" : 0,
            "width" : 640,
            "height" : 1136
          }
        },
        "imageType" : "png",
        "layerFrame" : {
          "y" : 0,
          "x" : 0,
          "width" : 640,
          "height" : 1136
        },
        "name" : "bemvindoA"
      },
      {
        "maskFrame" : null,
        "id" : "B4CCBB31-8E68-4E62-AB2A-C51E86EF1A9C",
        "visible" : false,
        "children" : [
          {
            "maskFrame" : null,
            "id" : "BDDDF522-361A-4F0C-8E4D-DDFA5F58D23B",
            "visible" : true,
            "children" : [

            ],
            "image" : {
              "path" : "images\/Group-BDDDF522-361A-4F0C-8E4D-DDFA5F58D23B.png",
              "frame" : {
                "y" : -103,
                "x" : -106,
                "width" : 851,
                "height" : 1343
              }
            },
            "imageType" : "png",
            "layerFrame" : {
              "y" : -103,
              "x" : -106,
              "width" : 851,
              "height" : 1343
            },
            "name" : "Group"
          }
        ],
        "image" : {
          "path" : "images\/bemvindoB-B4CCBB31-8E68-4E62-AB2A-C51E86EF1A9C.png",
          "frame" : {
            "y" : 0,
            "x" : 0,
            "width" : 640,
            "height" : 1136
          }
        },
        "imageType" : "png",
        "layerFrame" : {
          "y" : 0,
          "x" : 0,
          "width" : 640,
          "height" : 1136
        },
        "name" : "bemvindoB"
      },
      {
        "maskFrame" : null,
        "id" : "FFD54B6D-10E7-4251-8869-DD019965927F",
        "visible" : false,
        "children" : [
          {
            "maskFrame" : null,
            "id" : "9B437A83-F8D9-480E-BA72-D3A16F8955C4",
            "visible" : true,
            "children" : [

            ],
            "image" : {
              "path" : "images\/Group-9B437A83-F8D9-480E-BA72-D3A16F8955C4.png",
              "frame" : {
                "y" : -103,
                "x" : -106,
                "width" : 851,
                "height" : 1343
              }
            },
            "imageType" : "png",
            "layerFrame" : {
              "y" : -103,
              "x" : -106,
              "width" : 851,
              "height" : 1343
            },
            "name" : "Group"
          }
        ],
        "image" : {
          "path" : "images\/bemvindoC-FFD54B6D-10E7-4251-8869-DD019965927F.png",
          "frame" : {
            "y" : 0,
            "x" : 0,
            "width" : 640,
            "height" : 1136
          }
        },
        "imageType" : "png",
        "layerFrame" : {
          "y" : 0,
          "x" : 0,
          "width" : 640,
          "height" : 1136
        },
        "name" : "bemvindoC"
      },
      {
        "maskFrame" : null,
        "id" : "232B7051-F3F7-4679-AC8C-DA2BDF2002CA",
        "visible" : false,
        "children" : [
          {
            "maskFrame" : null,
            "id" : "85AE93D2-A7F3-46C7-8A00-F93EABDB7282",
            "visible" : true,
            "children" : [
              {
                "maskFrame" : null,
                "id" : "7F1A46B2-643B-4E26-8ECA-8A06A3987128",
                "visible" : true,
                "children" : [
                  {
                    "maskFrame" : null,
                    "id" : "CE68DC7A-FBC1-4F9C-91A9-5D6228B3703A",
                    "visible" : true,
                    "children" : [

                    ],
                    "image" : {
                      "path" : "images\/Line__Line_3-CE68DC7A-FBC1-4F9C-91A9-5D6228B3703A.png",
                      "frame" : {
                        "y" : 940,
                        "x" : 56,
                        "width" : 211,
                        "height" : 206
                      }
                    },
                    "imageType" : "png",
                    "layerFrame" : {
                      "y" : 940,
                      "x" : 56,
                      "width" : 211,
                      "height" : 206
                    },
                    "name" : "Line__Line_3"
                  },
                  {
                    "maskFrame" : null,
                    "id" : "7BE8CF81-C982-427A-9BF4-EE4B22236215",
                    "visible" : true,
                    "children" : [

                    ],
                    "image" : {
                      "path" : "images\/Line__Line_2-7BE8CF81-C982-427A-9BF4-EE4B22236215.png",
                      "frame" : {
                        "y" : 938,
                        "x" : 24,
                        "width" : 210,
                        "height" : 206
                      }
                    },
                    "imageType" : "png",
                    "layerFrame" : {
                      "y" : 938,
                      "x" : 24,
                      "width" : 210,
                      "height" : 206
                    },
                    "name" : "Line__Line_2"
                  }
                ],
                "image" : {
                  "path" : "images\/Sync_icon_4-7F1A46B2-643B-4E26-8ECA-8A06A3987128.png",
                  "frame" : {
                    "y" : 924,
                    "x" : 24,
                    "width" : 242,
                    "height" : 234
                  }
                },
                "imageType" : "png",
                "layerFrame" : {
                  "y" : 924,
                  "x" : 24,
                  "width" : 242,
                  "height" : 234
                },
                "name" : "Sync_icon_4"
              }
            ],
            "image" : {
              "path" : "images\/botaoSincronizar-85AE93D2-A7F3-46C7-8A00-F93EABDB7282.png",
              "frame" : {
                "y" : 898,
                "x" : -12,
                "width" : 656,
                "height" : 284
              }
            },
            "imageType" : "png",
            "layerFrame" : {
              "y" : 898,
              "x" : -12,
              "width" : 656,
              "height" : 284
            },
            "name" : "botaoSincronizar"
          },
          {
            "maskFrame" : null,
            "id" : "7E547020-C8EF-4325-9E7D-2D587C7EE97C",
            "visible" : true,
            "children" : [

            ],
            "image" : {
              "path" : "images\/Rectangle_34__Oval_33-7E547020-C8EF-4325-9E7D-2D587C7EE97C.png",
              "frame" : {
                "y" : 630,
                "x" : 180,
                "width" : 278,
                "height" : 279
              }
            },
            "imageType" : "png",
            "layerFrame" : {
              "y" : 630,
              "x" : 180,
              "width" : 278,
              "height" : 279
            },
            "name" : "Rectangle_34__Oval_33"
          }
        ],
        "image" : {
          "path" : "images\/bemvindoD-232B7051-F3F7-4679-AC8C-DA2BDF2002CA.png",
          "frame" : {
            "y" : 0,
            "x" : 0,
            "width" : 640,
            "height" : 1136
          }
        },
        "imageType" : "png",
        "layerFrame" : {
          "y" : 0,
          "x" : 0,
          "width" : 640,
          "height" : 1136
        },
        "name" : "bemvindoD"
      },
      {
        "maskFrame" : null,
        "id" : "CD4ECF05-6C59-470A-BA7A-212F24BDA3A5",
        "visible" : false,
        "children" : [
          {
            "maskFrame" : null,
            "id" : "8B2E3F90-0381-4840-A4A5-CA85BD0E6858",
            "visible" : true,
            "children" : [

            ],
            "image" : {
              "path" : "images\/Group-8B2E3F90-0381-4840-A4A5-CA85BD0E6858.png",
              "frame" : {
                "y" : -92,
                "x" : -88,
                "width" : 816,
                "height" : 230
              }
            },
            "imageType" : "png",
            "layerFrame" : {
              "y" : -92,
              "x" : -88,
              "width" : 816,
              "height" : 230
            },
            "name" : "Group"
          },
          {
            "maskFrame" : null,
            "id" : "325AD03F-FBCF-456C-8B9A-6A5F7DB1B12D",
            "visible" : true,
            "children" : [
              {
                "maskFrame" : null,
                "id" : "D51E2F08-4324-4582-8AC0-0312D26C48BA",
                "visible" : true,
                "children" : [

                ],
                "image" : {
                  "path" : "images\/botaoMenu-D51E2F08-4324-4582-8AC0-0312D26C48BA.png",
                  "frame" : {
                    "y" : -11,
                    "x" : -59,
                    "width" : 237,
                    "height" : 216
                  }
                },
                "imageType" : "png",
                "layerFrame" : {
                  "y" : -11,
                  "x" : -59,
                  "width" : 237,
                  "height" : 216
                },
                "name" : "botaoMenu"
              }
            ],
            "image" : {
              "path" : "images\/botaoMenu-325AD03F-FBCF-456C-8B9A-6A5F7DB1B12D.png",
              "frame" : {
                "y" : -21,
                "x" : -59,
                "width" : 237,
                "height" : 226
              }
            },
            "imageType" : "png",
            "layerFrame" : {
              "y" : -21,
              "x" : -59,
              "width" : 237,
              "height" : 226
            },
            "name" : "botaoMenu"
          }
        ],
        "image" : {
          "path" : "images\/navigation-CD4ECF05-6C59-470A-BA7A-212F24BDA3A5.png",
          "frame" : {
            "y" : 0,
            "x" : 0,
            "width" : 640,
            "height" : 128
          }
        },
        "imageType" : "png",
        "layerFrame" : {
          "y" : 0,
          "x" : 0,
          "width" : 640,
          "height" : 128
        },
        "name" : "navigation"
      },
      {
        "maskFrame" : null,
        "id" : "40B2D8F8-24EE-44E6-A468-DD96EA617F14",
        "visible" : false,
        "children" : [
          {
            "maskFrame" : null,
            "id" : "358B30CA-2611-47FF-A0FE-DEFF0DFECA6E",
            "visible" : true,
            "children" : [

            ],
            "image" : {
              "path" : "images\/Group_2-358B30CA-2611-47FF-A0FE-DEFF0DFECA6E.png",
              "frame" : {
                "y" : 150,
                "x" : -22,
                "width" : 515,
                "height" : 1024
              }
            },
            "imageType" : "png",
            "layerFrame" : {
              "y" : 150,
              "x" : -22,
              "width" : 515,
              "height" : 1024
            },
            "name" : "Group_2"
          }
        ],
        "image" : {
          "path" : "images\/startExames-40B2D8F8-24EE-44E6-A468-DD96EA617F14.png",
          "frame" : {
            "y" : 0,
            "x" : 0,
            "width" : 640,
            "height" : 1136
          }
        },
        "imageType" : "png",
        "layerFrame" : {
          "y" : 0,
          "x" : 0,
          "width" : 640,
          "height" : 1136
        },
        "name" : "startExames"
      },
      {
        "maskFrame" : null,
        "id" : "B32B4652-9DA8-400B-9E8C-BA8030DFEB55",
        "visible" : false,
        "children" : [

        ],
        "image" : {
          "path" : "images\/botaoLipidico-B32B4652-9DA8-400B-9E8C-BA8030DFEB55.png",
          "frame" : {
            "y" : 0,
            "x" : 0,
            "width" : 640,
            "height" : 1136
          }
        },
        "imageType" : "png",
        "layerFrame" : {
          "y" : 0,
          "x" : 0,
          "width" : 640,
          "height" : 1136
        },
        "name" : "botaoLipidico"
      },
      {
        "maskFrame" : null,
        "id" : "4C0CD3C1-317E-4E57-AB18-FD7A637A7C38",
        "visible" : false,
        "children" : [
          {
            "maskFrame" : null,
            "id" : "ADE96874-7533-4171-812C-387EAC710314",
            "visible" : true,
            "children" : [
              {
                "maskFrame" : null,
                "id" : "0BB2B12B-8F4B-4761-AC69-A48F3794B393",
                "visible" : true,
                "children" : [
                  {
                    "maskFrame" : null,
                    "id" : "33A29CA5-A9B0-4FDC-AACF-6678E19A5B18",
                    "visible" : true,
                    "children" : [

                    ],
                    "image" : {
                      "path" : "images\/Group_2-33A29CA5-A9B0-4FDC-AACF-6678E19A5B18.png",
                      "frame" : {
                        "y" : 133,
                        "x" : 399,
                        "width" : 252,
                        "height" : 258
                      }
                    },
                    "imageType" : "png",
                    "layerFrame" : {
                      "y" : 133,
                      "x" : 399,
                      "width" : 252,
                      "height" : 258
                    },
                    "name" : "Group_2"
                  },
                  {
                    "maskFrame" : null,
                    "id" : "D1FCD155-F630-4A6A-B6D1-BAECF05A7254",
                    "visible" : true,
                    "children" : [

                    ],
                    "image" : {
                      "path" : "images\/Group-D1FCD155-F630-4A6A-B6D1-BAECF05A7254.png",
                      "frame" : {
                        "y" : 101,
                        "x" : -42,
                        "width" : 724,
                        "height" : 1072
                      }
                    },
                    "imageType" : "png",
                    "layerFrame" : {
                      "y" : 101,
                      "x" : -42,
                      "width" : 724,
                      "height" : 1072
                    },
                    "name" : "Group"
                  }
                ],
                "image" : {
                  "path" : "images\/botaoHemograma_2-0BB2B12B-8F4B-4761-AC69-A48F3794B393.png",
                  "frame" : {
                    "y" : 101,
                    "x" : -42,
                    "width" : 724,
                    "height" : 1072
                  }
                },
                "imageType" : "png",
                "layerFrame" : {
                  "y" : 101,
                  "x" : -42,
                  "width" : 724,
                  "height" : 1072
                },
                "name" : "botaoHemograma_2"
              }
            ],
            "image" : {
              "path" : "images\/botaoHemograma-ADE96874-7533-4171-812C-387EAC710314.png",
              "frame" : {
                "y" : -100,
                "x" : -100,
                "width" : 851,
                "height" : 1343
              }
            },
            "imageType" : "png",
            "layerFrame" : {
              "y" : -100,
              "x" : -100,
              "width" : 851,
              "height" : 1343
            },
            "name" : "botaoHemograma"
          },
          {
            "maskFrame" : null,
            "id" : "B5A5CF9F-D564-4E0F-AC8A-DB3F34B2BC05",
            "visible" : true,
            "children" : [

            ],
            "image" : {
              "path" : "images\/botaoGlicemia_2-B5A5CF9F-D564-4E0F-AC8A-DB3F34B2BC05.png",
              "frame" : {
                "y" : 101,
                "x" : -41,
                "width" : 724,
                "height" : 1072
              }
            },
            "imageType" : "png",
            "layerFrame" : {
              "y" : 101,
              "x" : -41,
              "width" : 724,
              "height" : 1072
            },
            "name" : "botaoGlicemia_2"
          }
        ],
        "image" : {
          "path" : "images\/botaoGlicemia-4C0CD3C1-317E-4E57-AB18-FD7A637A7C38.png",
          "frame" : {
            "y" : 0,
            "x" : 0,
            "width" : 640,
            "height" : 1136
          }
        },
        "imageType" : "png",
        "layerFrame" : {
          "y" : 0,
          "x" : 0,
          "width" : 640,
          "height" : 1136
        },
        "name" : "botaoGlicemia"
      },
      {
        "maskFrame" : null,
        "id" : "ACD2C086-E748-4060-A7FD-554A4612AB58",
        "visible" : false,
        "children" : [

        ],
        "image" : {
          "path" : "images\/glicemiaResultado-ACD2C086-E748-4060-A7FD-554A4612AB58.png",
          "frame" : {
            "y" : 0,
            "x" : 0,
            "width" : 640,
            "height" : 1136
          }
        },
        "imageType" : "png",
        "layerFrame" : {
          "y" : 0,
          "x" : 0,
          "width" : 640,
          "height" : 1136
        },
        "name" : "glicemiaResultado"
      },
      {
        "maskFrame" : null,
        "id" : "9011B0A1-3691-4F57-9454-4F65A8942526",
        "visible" : false,
        "children" : [

        ],
        "image" : {
          "path" : "images\/perfilLipidicoResultado-9011B0A1-3691-4F57-9454-4F65A8942526.png",
          "frame" : {
            "y" : 1,
            "x" : 0,
            "width" : 640,
            "height" : 1135
          }
        },
        "imageType" : "png",
        "layerFrame" : {
          "y" : 1,
          "x" : 0,
          "width" : 640,
          "height" : 1135
        },
        "name" : "perfilLipidicoResultado"
      },
      {
        "maskFrame" : null,
        "id" : "038B71D6-9429-4F68-9E72-8FB5294F1FF0",
        "visible" : false,
        "children" : [
          {
            "maskFrame" : null,
            "id" : "318FC23B-AC72-4F65-83A8-76972E08180B",
            "visible" : true,
            "children" : [

            ],
            "image" : {
              "path" : "images\/Oval_102__selected_12-318FC23B-AC72-4F65-83A8-76972E08180B.png",
              "frame" : {
                "y" : 2863,
                "x" : 288,
                "width" : 265,
                "height" : 265
              }
            },
            "imageType" : "png",
            "layerFrame" : {
              "y" : 2863,
              "x" : 288,
              "width" : 265,
              "height" : 265
            },
            "name" : "Oval_102__selected_12"
          },
          {
            "maskFrame" : null,
            "id" : "29AA3D99-4861-4CD7-88AC-C38CEA5F97BC",
            "visible" : true,
            "children" : [

            ],
            "image" : {
              "path" : "images\/Group_7-29AA3D99-4861-4CD7-88AC-C38CEA5F97BC.png",
              "frame" : {
                "y" : 2939,
                "x" : 221,
                "width" : 245,
                "height" : 245
              }
            },
            "imageType" : "png",
            "layerFrame" : {
              "y" : 2939,
              "x" : 221,
              "width" : 245,
              "height" : 245
            },
            "name" : "Group_7"
          },
          {
            "maskFrame" : null,
            "id" : "4BF7369C-65FB-4D34-8509-7F66DE118F13",
            "visible" : true,
            "children" : [

            ],
            "image" : {
              "path" : "images\/Group_6-4BF7369C-65FB-4D34-8509-7F66DE118F13.png",
              "frame" : {
                "y" : 2945,
                "x" : 178,
                "width" : 239,
                "height" : 239
              }
            },
            "imageType" : "png",
            "layerFrame" : {
              "y" : 2945,
              "x" : 178,
              "width" : 239,
              "height" : 239
            },
            "name" : "Group_6"
          },
          {
            "maskFrame" : null,
            "id" : "1B6F609F-F750-4D86-AE51-71A0F54BF898",
            "visible" : true,
            "children" : [

            ],
            "image" : {
              "path" : "images\/Oval_102__selected_11-1B6F609F-F750-4D86-AE51-71A0F54BF898.png",
              "frame" : {
                "y" : 2361,
                "x" : 227,
                "width" : 265,
                "height" : 265
              }
            },
            "imageType" : "png",
            "layerFrame" : {
              "y" : 2361,
              "x" : 227,
              "width" : 265,
              "height" : 265
            },
            "name" : "Oval_102__selected_11"
          },
          {
            "maskFrame" : null,
            "id" : "37514708-493F-4693-AE2E-FB70EB4ABF57",
            "visible" : true,
            "children" : [

            ],
            "image" : {
              "path" : "images\/Group_5-37514708-493F-4693-AE2E-FB70EB4ABF57.png",
              "frame" : {
                "y" : 2390,
                "x" : 164,
                "width" : 313,
                "height" : 313
              }
            },
            "imageType" : "png",
            "layerFrame" : {
              "y" : 2390,
              "x" : 164,
              "width" : 313,
              "height" : 313
            },
            "name" : "Group_5"
          },
          {
            "maskFrame" : null,
            "id" : "6BE899A9-0E02-488F-BF2C-1620FD5987B8",
            "visible" : true,
            "children" : [

            ],
            "image" : {
              "path" : "images\/Oval_102__selected_10-6BE899A9-0E02-488F-BF2C-1620FD5987B8.png",
              "frame" : {
                "y" : 1859,
                "x" : 227,
                "width" : 265,
                "height" : 265
              }
            },
            "imageType" : "png",
            "layerFrame" : {
              "y" : 1859,
              "x" : 227,
              "width" : 265,
              "height" : 265
            },
            "name" : "Oval_102__selected_10"
          },
          {
            "maskFrame" : null,
            "id" : "9AC069BE-FF8A-4E98-AC79-48D3F6887E2D",
            "visible" : true,
            "children" : [

            ],
            "image" : {
              "path" : "images\/Group_2-9AC069BE-FF8A-4E98-AC79-48D3F6887E2D.png",
              "frame" : {
                "y" : 1888,
                "x" : 164,
                "width" : 313,
                "height" : 313
              }
            },
            "imageType" : "png",
            "layerFrame" : {
              "y" : 1888,
              "x" : 164,
              "width" : 313,
              "height" : 313
            },
            "name" : "Group_2"
          },
          {
            "maskFrame" : null,
            "id" : "92A7BEEB-C5D9-4C5A-B044-6F0A2E4C483F",
            "visible" : true,
            "children" : [

            ],
            "image" : {
              "path" : "images\/Line__Line__Line_2-92A7BEEB-C5D9-4C5A-B044-6F0A2E4C483F.png",
              "frame" : {
                "y" : 1379,
                "x" : 148,
                "width" : 210,
                "height" : 316
              }
            },
            "imageType" : "png",
            "layerFrame" : {
              "y" : 1379,
              "x" : 148,
              "width" : 210,
              "height" : 316
            },
            "name" : "Line__Line__Line_2"
          },
          {
            "maskFrame" : null,
            "id" : "B0FAB909-771B-44DE-97B9-41D1D38CE44B",
            "visible" : true,
            "children" : [

            ],
            "image" : {
              "path" : "images\/Oval_102__selected_9-B0FAB909-771B-44DE-97B9-41D1D38CE44B.png",
              "frame" : {
                "y" : 1354,
                "x" : 227,
                "width" : 265,
                "height" : 265
              }
            },
            "imageType" : "png",
            "layerFrame" : {
              "y" : 1354,
              "x" : 227,
              "width" : 265,
              "height" : 265
            },
            "name" : "Oval_102__selected_9"
          },
          {
            "maskFrame" : null,
            "id" : "FF2F3BD5-202B-4CC0-A77A-D4A2E5619F4E",
            "visible" : true,
            "children" : [

            ],
            "image" : {
              "path" : "images\/Group_4-FF2F3BD5-202B-4CC0-A77A-D4A2E5619F4E.png",
              "frame" : {
                "y" : 1382,
                "x" : 164,
                "width" : 313,
                "height" : 313
              }
            },
            "imageType" : "png",
            "layerFrame" : {
              "y" : 1382,
              "x" : 164,
              "width" : 313,
              "height" : 313
            },
            "name" : "Group_4"
          },
          {
            "maskFrame" : null,
            "id" : "B87A9C49-2B56-47DD-AC23-3AD0813AA0AD",
            "visible" : true,
            "children" : [

            ],
            "image" : {
              "path" : "images\/Oval_102__selected_8-B87A9C49-2B56-47DD-AC23-3AD0813AA0AD.png",
              "frame" : {
                "y" : 850,
                "x" : 227,
                "width" : 265,
                "height" : 265
              }
            },
            "imageType" : "png",
            "layerFrame" : {
              "y" : 850,
              "x" : 227,
              "width" : 265,
              "height" : 265
            },
            "name" : "Oval_102__selected_8"
          },
          {
            "maskFrame" : null,
            "id" : "91365ABD-000F-439D-9470-20130FE4ADC4",
            "visible" : true,
            "children" : [

            ],
            "image" : {
              "path" : "images\/Group-91365ABD-000F-439D-9470-20130FE4ADC4.png",
              "frame" : {
                "y" : 878,
                "x" : 164,
                "width" : 313,
                "height" : 313
              }
            },
            "imageType" : "png",
            "layerFrame" : {
              "y" : 878,
              "x" : 164,
              "width" : 313,
              "height" : 313
            },
            "name" : "Group"
          },
          {
            "maskFrame" : null,
            "id" : "881D8C15-7561-49A9-978F-C39CE304E373",
            "visible" : true,
            "children" : [

            ],
            "image" : {
              "path" : "images\/Group-881D8C15-7561-49A9-978F-C39CE304E373.png",
              "frame" : {
                "y" : 404,
                "x" : 162,
                "width" : 311,
                "height" : 279
              }
            },
            "imageType" : "png",
            "layerFrame" : {
              "y" : 404,
              "x" : 162,
              "width" : 311,
              "height" : 279
            },
            "name" : "Group"
          },
          {
            "maskFrame" : null,
            "id" : "2BB53093-0474-4EA6-870D-D99132438EAC",
            "visible" : true,
            "children" : [

            ],
            "image" : {
              "path" : "images\/Oval_102__selected_7-2BB53093-0474-4EA6-870D-D99132438EAC.png",
              "frame" : {
                "y" : 344,
                "x" : 227,
                "width" : 265,
                "height" : 265
              }
            },
            "imageType" : "png",
            "layerFrame" : {
              "y" : 344,
              "x" : 227,
              "width" : 265,
              "height" : 265
            },
            "name" : "Oval_102__selected_7"
          }
        ],
        "image" : {
          "path" : "images\/hemogramaResultado-038B71D6-9429-4F68-9E72-8FB5294F1FF0.png",
          "frame" : {
            "y" : 1,
            "x" : 1,
            "width" : 639,
            "height" : 1135
          }
        },
        "imageType" : "png",
        "layerFrame" : {
          "y" : 1,
          "x" : 1,
          "width" : 639,
          "height" : 1135
        },
        "name" : "hemogramaResultado"
      },
      {
        "maskFrame" : null,
        "id" : "41A10ADC-0A8D-420D-8285-151327C82CD0",
        "visible" : false,
        "children" : [
          {
            "maskFrame" : null,
            "id" : "247D9C24-2497-4DDC-AC0B-F9646F18A0C4",
            "visible" : true,
            "children" : [

            ],
            "image" : {
              "path" : "images\/Group-247D9C24-2497-4DDC-AC0B-F9646F18A0C4.png",
              "frame" : {
                "y" : 94,
                "x" : -66,
                "width" : 606,
                "height" : 745
              }
            },
            "imageType" : "png",
            "layerFrame" : {
              "y" : 94,
              "x" : -66,
              "width" : 606,
              "height" : 745
            },
            "name" : "Group"
          }
        ],
        "image" : {
          "path" : "images\/openMenu-41A10ADC-0A8D-420D-8285-151327C82CD0.png",
          "frame" : {
            "y" : 128,
            "x" : 0,
            "width" : 440,
            "height" : 1008
          }
        },
        "imageType" : "png",
        "layerFrame" : {
          "y" : 128,
          "x" : 0,
          "width" : 440,
          "height" : 1008
        },
        "name" : "openMenu"
      }
    ],
    "image" : {
      "path" : "images\/Portrait-C89F8FF8-F26C-4E34-91E6-DB4C79B12951.png",
      "frame" : {
        "y" : 0,
        "x" : 0,
        "width" : 640,
        "height" : 1136
      }
    },
    "imageType" : "png",
    "layerFrame" : {
      "y" : 0,
      "x" : 0,
      "width" : 640,
      "height" : 1136
    },
    "name" : "Portrait"
  }
]
window.Framer.Defaults.DeviceView = {
  "deviceScale" : -1,
  "orientation" : 0,
  "contentScale" : 1,
  "deviceType" : "iphone-5s-silver"
};

window.FramerStudioInfo = {
  "deviceImagesUrl" : "file:\/\/\/Users\/nmoya\/Desktop\/Framer%20Studio.app\/Contents\/Resources\/DeviceImages\/"
};

Framer.Device = new Framer.DeviceView();
Framer.Device.setupContext();