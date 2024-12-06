import 'dart:convert';

import 'package:bdui_pod_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class ServicesEndpoint extends Endpoint {
  Future<String> services(Session session) async {
    return jsonEncode({
      "templates": {
        "icon-service-card": {
          "type": "container",
          "direction": "vertical",
          "height": {"type": "fixed", "value": "132", "unit": "dp"},
          "background": [
            {
              "type": "gradient",
              "colors": ["#F6F4FA", "#F0EBF8"],
              "angle": 270
            }
          ],
          "border": {
            "corner_radius": 15,
            "stroke": {"color": "#F7F7FA", "width": 1}
          },
          "paddings": {"left": 16, "right": 16, "top": 16, "bottom": 16},
          "margins": {"left": 8, "bottom": 16, "right": 8},
          "items": [
            {
              "type": "image",
              "width": {"type": "fixed", "value": "40", "unit": "dp"},
              "height": {"type": "fixed", "value": "40", "unit": "dp"},
              "\$image_url": "image_url",
              "margins": {"bottom": 12}
            },
            {"type": "text", "font_size": 16, "\$text": "title"}
          ]
        }
      },
      "card": {
        "log_id": "div_services_card",
        "states": [
          {
            "state_id": 0,
            "div": {
              "type": "container",
              "orientation": "vertical",
              "width": {"type": "match_parent"},
              "items": [
                {
                  "type": "container",
                  "orientation": "horizontal",
                  "items": [
                    {
                      "type": "icon-service-card",
                      "title": "Больничный без больничного",
                      "image_url":
                          "https://trueimages.ru/img/21/cc/c2cd0376.png"
                    },
                    {
                      "type": "icon-service-card",
                      "title": "Больничный",
                      "image_url":
                          "https://trueimages.ru/img/4a/ce/0bcd0376.png"
                    }
                  ]
                },
                {
                  "type": "container",
                  "orientation": "horizontal",
                  "items": [
                    {
                      "type": "icon-service-card",
                      "title": "Заказать копию трудовой книжки",
                      "image_url": "https://alllll.ru/img/type%3Dcopy.svg",
                      "actions": [
                        {
                          "log_id": "open_demo_activity",
                          "url": "div-action://open_screen?page=service"
                        }
                      ]
                    },
                    {
                      "type": "icon-service-card",
                      "title": "Уведомление о больничном листе",
                      "image_url":
                          "https://alllll.ru/img/type%3Dsick%20list.svg"
                    }
                  ]
                },
                {
                  "type": "container",
                  "orientation": "horizontal",
                  "items": [
                    {
                      "type": "icon-service-card",
                      "title": "Справка 2-НДФЛ",
                      "image_url": "https://alllll.ru/img/type%3D2ndfl.svg"
                    },
                    {
                      "type": "icon-service-card",
                      "title": "Справка с места работы",
                      "image_url": "https://alllll.ru/img/type%3Dwork%20doc.svg"
                    }
                  ]
                },
                {
                  "type": "container",
                  "orientation": "horizontal",
                  "items": [
                    {
                      "type": "icon-service-card",
                      "title": "Заявление на отпуск",
                      "image_url": "https://alllll.ru/img/type%3Dvacation.svg"
                    },
                    {
                      "type": "icon-service-card",
                      "title": "Заявка на командировку",
                      "image_url":
                          "https://alllll.ru/img/type%3Dbusiness%20trip.svg"
                    }
                  ]
                },
                {
                  "type": "container",
                  "orientation": "horizontal",
                  "items": [
                    {
                      "type": "icon-service-card",
                      "title": "Расчетный лист",
                      "image_url":
                          "https://alllll.ru/img/type%3Dpay%20sheet.svg"
                    },
                    {
                      "type": "container",
                      "direction": "vertical",
                      "height": {"type": "fixed", "value": "132", "unit": "dp"},
                      "paddings": {
                        "left": 16,
                        "right": 16,
                        "top": 16,
                        "bottom": 16
                      },
                      "margins": {"left": 8, "bottom": 16, "right": 8}
                    }
                  ]
                }
              ]
            }
          }
        ]
      }
    });

    /* return r"""
{
    "templates": {
        "icon-service-card": {
            "type": "container",
            "direction": "vertical",
            "height": {
                "type": "fixed",
                "value": "132",
                "unit": "dp"
            },
            "background": [
                {
                    "type": "gradient",
                    "colors": [
                        "#F6F4FA",
                        "#F0EBF8"
                    ],
                    "angle": 270
                }
            ],
            "border": {
                "corner_radius": 15,
                "stroke": {
                    "color": "#F7F7FA",
                    "width": 1
                }
            },
            "paddings": {
                "left": 16,
                "right": 16,
                "top": 16,
                "bottom": 16
            },
            "margins": {
                "left": 8,
                "bottom": 16,
                "right": 8
            },
            "items": [
                {
                    "type": "image",
                    "width": {
                        "type": "fixed",
                        "value": "40",
                        "unit": "dp"
                    },
                    "height": {
                        "type": "fixed",
                        "value": "40",
                        "unit": "dp"
                    },
                    "$image_url": "image_url",
                    "margins": {
                        "bottom": 12
                    }
                },
                {
                    "type": "text",
                    "font_size": 16,
                    "$text": "title"
                }
            ]
        }
    },
    "card": {
        "log_id": "div_services_card",
        "states": [
            {
                "state_id": 0,
                "div": {
                    "type": "container",
                    "orientation": "vertical",
                    "width": {
                        "type": "match_parent"
                    },
                    "items": [
                        {
                            "type": "container",
                            "orientation": "horizontal",
                            "items": [
                                {
                                    "type": "icon-service-card",
                                    "title": "Больничный без больничного",
                                    "image_url": "https://trueimages.ru/img/21/cc/c2cd0376.png"
                                },
                                {
                                    "type": "icon-service-card",
                                    "title": "Больничный",
                                    "image_url": "https://trueimages.ru/img/4a/ce/0bcd0376.png"
                                }
                            ]
                        },
                        {
                            "type": "container",
                            "orientation": "horizontal",
                            "items": [
                                {
                                    "type": "icon-service-card",
                                    "title": "Заказать копию трудовой книжки",
                                    "image_url": "https://alllll.ru/img/type%3Dcopy.svg",
                                    "actions": [
                                        {
                                            "log_id": "open_demo_activity",
                                            "url": "div-action://open_screen?page=service"
                                        }
                                    ]
                                },
                                {
                                    "type": "icon-service-card",
                                    "title": "Уведомление о больничном листе",
                                    "image_url": "https://alllll.ru/img/type%3Dsick%20list.svg"
                                }
                            ]
                        },
                        {
                            "type": "container",
                            "orientation": "horizontal",
                            "items": [
                                {
                                    "type": "icon-service-card",
                                    "title": "Справка 2-НДФЛ",
                                    "image_url": "https://alllll.ru/img/type%3D2ndfl.svg"
                                },
                                {
                                    "type": "icon-service-card",
                                    "title": "Справка с места работы",
                                    "image_url": "https://alllll.ru/img/type%3Dwork%20doc.svg"
                                }
                            ]
                        },
                        {
                            "type": "container",
                            "orientation": "horizontal",
                            "items": [
                                {
                                    "type": "icon-service-card",
                                    "title": "Заявление на отпуск",
                                    "image_url": "https://alllll.ru/img/type%3Dvacation.svg"
                                },
                                {
                                    "type": "icon-service-card",
                                    "title": "Заявка на командировку",
                                    "image_url": "https://alllll.ru/img/type%3Dbusiness%20trip.svg"
                                }
                            ]
                        },
                        {
                            "type": "container",
                            "orientation": "horizontal",
                            "items": [
                                {
                                    "type": "icon-service-card",
                                    "title": "Расчетный лист",
                                    "image_url": "https://alllll.ru/img/type%3Dpay%20sheet.svg"
                                },
                                {
                                    "type": "container",
                                    "direction": "vertical",
                                    "height": {
                                        "type": "fixed",
                                        "value": "132",
                                        "unit": "dp"
                                    },
                                    "paddings": {
                                        "left": 16,
                                        "right": 16,
                                        "top": 16,
                                        "bottom": 16
                                    },
                                    "margins": {
                                        "left": 8,
                                        "bottom": 16,
                                        "right": 8
                                    }
                                }
                            ]
                        }
                    ]
                }
            }
        ]
    }
}
""";*/
  }

  final List<Post> _posts = [];

  Future<String> posts(Session session, int page) async {
    if (_posts.isEmpty) {
      _posts.addAll(_generatePosts());
    }

    return jsonEncode({
      "card": {
        "log_id": "post1",
        "variables": [
          {"name": "post1_likes", "type": "integer", "value": 5},
          {"name": "post1_liked", "type": "boolean", "value": false}
        ],
        "states": [
          {
            "state_id": 1,
            "div": {
              "type": "container",
              "orientation": "vertical",
              "width": {"type": "match_parent"},
              "items": [
                {
                  "type": "container",
                  "direction": "vertical",
                  "items": [
                    {
                      "type": "container",
                      "orientation": "horizontal",
                      "paddings": {
                        "left": 16,
                        "right": 16,
                        "top": 12,
                        "bottom": 16
                      },
                      "items": [
                        {
                          "type": "image",
                          "width": {
                            "type": "fixed",
                            "value": "40",
                            "unit": "dp"
                          },
                          "height": {
                            "type": "fixed",
                            "value": "40",
                            "unit": "dp"
                          },
                          "image_url": "https://alllll.ru/img/avatar.png",
                          "margins": {"right": 16}
                        },
                        {
                          "type": "container",
                          "orientation": "vertical",
                          "paddings": {"bottom": 4},
                          "items": [
                            {
                              "type": "text",
                              "text": "Калинин Александр О.",
                              "font_size": 16,
                              "margins": {"bottom": 4}
                            },
                            {
                              "type": "text",
                              "text": "Финансово-административная служба",
                              "font_size": 12,
                              "text_color": "#9098b1"
                            }
                          ]
                        },
                        {
                          "type": "image",
                          "image_url": "https://alllll.ru/img/ellipsis-v.svg",
                          "width": {"type": "fixed", "value": 24, "unit": "dp"},
                          "height": {
                            "type": "fixed",
                            "value": 24,
                            "unit": "dp"
                          },
                          "transition_out": {"type": "fade", "duration": 500},
                          "transition_in": {"type": "fade", "duration": 500},
                          "actions": [
                            {
                              "log_id": "dislike_post",
                              "url": "div-action://press_post_menu"
                            }
                          ]
                        }
                      ]
                    },
                    {
                      "type": "pager",
                      "id": "pagerId",
                      "height": {"type": "fixed", "value": 400},
                      "layout_mode": {
                        "type": "fixed",
                        "neighbour_page_width": {"type": "fixed", "value": 2}
                      },
                      "items": [
                        {
                          "type": "image",
                          "image_url": "https://alllll.ru/img/picture.png",
                          "scale": "stretch"
                        },
                        {
                          "type": "image",
                          "image_url": "https://alllll.ru/img/picture.png",
                          "scale": "stretch",
                          "filters": [
                            {"type": "blur", "radius": 8}
                          ]
                        }
                      ]
                    },
                    {
                      "type": "state",
                      "id": "post1_like_state",
                      "default_state_id": "disliked",
                      "states": [
                        {
                          "state_id": "disliked",
                          "div": {
                            "type": "image",
                            "image_url": "https://alllll.ru/img/heart.svg",
                            "height": {"type": "fixed", "value": 24},
                            "margins": {"left": 16, "top": 12},
                            "width": {"type": "fixed", "value": 24},
                            "actions": [
                              {
                                "log_id": "dislike_post",
                                "url":
                                    "div-action://set_variable?name=post1_likes&value=@{post1_likes + 1}"
                              },
                              {
                                "log_id": "set_like",
                                "url":
                                    "div-action://set_state?state_id=1/post1_like_state/liked"
                              }
                            ]
                          }
                        },
                        {
                          "state_id": "liked",
                          "div": {
                            "type": "image",
                            "image_url": "https://alllll.ru/img/heart_full.svg",
                            "height": {"type": "fixed", "value": 24},
                            "margins": {"left": 16, "top": 12},
                            "width": {"type": "fixed", "value": 24},
                            "actions": [
                              {
                                "log_id": "like_post",
                                "url":
                                    "div-action://set_variable?name=post1_likes&value=@{post1_likes - 1}"
                              },
                              {
                                "log_id": "set_disliked",
                                "url":
                                    "div-action://set_state?state_id=1/post1_like_state/disliked"
                              }
                            ]
                          }
                        }
                      ]
                    },
                    {
                      "type": "container",
                      "orientation": "horizontal",
                      "margins": {"top": 6, "left": 16},
                      "content_alignment_vertical": "center",
                      "items": [
                        {
                          "type": "container",
                          "orientation": "overlap",
                          "width": {"type": "wrap_content"},
                          "items": [
                            {
                              "type": "container",
                              "border": {"corner_radius": 16},
                              "background": [
                                {"type": "solid", "color": "#ffffff"}
                              ],
                              "width": {"type": "fixed", "value": 24},
                              "items": [
                                {
                                  "type": "image",
                                  "image_url":
                                      "https://alllll.ru/img/avatar.png",
                                  "width": {
                                    "type": "fixed",
                                    "value": 22,
                                    "unit": "dp"
                                  },
                                  "height": {
                                    "type": "fixed",
                                    "value": 22,
                                    "unit": "dp"
                                  },
                                  "paddings": {
                                    "left": 2,
                                    "bottom": 2,
                                    "right": 2,
                                    "top": 2
                                  }
                                }
                              ]
                            },
                            {
                              "type": "container",
                              "margins": {"left": 14},
                              "border": {"corner_radius": 16},
                              "background": [
                                {"type": "solid", "color": "#ffffff"}
                              ],
                              "width": {"type": "fixed", "value": 24},
                              "items": [
                                {
                                  "type": "image",
                                  "image_url":
                                      "https://alllll.ru/img/avatar.png",
                                  "width": {
                                    "type": "fixed",
                                    "value": 22,
                                    "unit": "dp"
                                  },
                                  "height": {
                                    "type": "fixed",
                                    "value": 22,
                                    "unit": "dp"
                                  },
                                  "paddings": {
                                    "left": 2,
                                    "bottom": 2,
                                    "right": 2,
                                    "top": 2
                                  }
                                }
                              ]
                            },
                            {
                              "type": "container",
                              "margins": {"left": 28},
                              "border": {"corner_radius": 16},
                              "background": [
                                {"type": "solid", "color": "#ffffff"}
                              ],
                              "width": {"type": "fixed", "value": 24},
                              "items": [
                                {
                                  "type": "image",
                                  "image_url":
                                      "https://alllll.ru/img/avatar.png",
                                  "width": {
                                    "type": "fixed",
                                    "value": 22,
                                    "unit": "dp"
                                  },
                                  "height": {
                                    "type": "fixed",
                                    "value": 22,
                                    "unit": "dp"
                                  },
                                  "paddings": {
                                    "left": 2,
                                    "bottom": 2,
                                    "right": 2,
                                    "top": 2
                                  }
                                }
                              ]
                            }
                          ]
                        },
                        {
                          "type": "text",
                          "text": "@{post1_likes} лайков",
                          "font_size": 12,
                          "font_weight": "bold",
                          "margins": {"left": 8}
                        }
                      ]
                    },
                    {
                      "type": "state",
                      "id": "post1_description",
                      "default_state_id": "collapsed",
                      "states": [
                        {
                          "state_id": "collapsed",
                          "div": {
                            "type": "text",
                            "ranges": [
                              {
                                "start": 101,
                                "end": 106,
                                "text_color": "#6E7191",
                                "actions": [
                                  {
                                    "log_id": "set_expanded",
                                    "url":
                                        "div-action://set_state?state_id=1/post1_description/expanded"
                                  }
                                ]
                              }
                            ],
                            "margins": {
                              "left": 16,
                              "bottom": 2,
                              "right": 2,
                              "top": 2
                            },
                            "text":
                                "Всем рок! Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed \ndo eiusmod temor incididunt... ещё"
                          }
                        },
                        {
                          "state_id": "expanded",
                          "div": {
                            "type": "text",
                            "margins": {
                              "left": 16,
                              "bottom": 2,
                              "right": 2,
                              "top": 2
                            },
                            "text":
                                "Всем рок! Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temor incididunt, lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temor incididunt ✌🏼"
                          }
                        }
                      ]
                    }
                  ]
                }
              ]
            }
          }
        ]
      }
    });

    //return _posts.skip(page * 10 - page).take(10).toList();
  }

  Future<String> patchPosts(Session session, int page) async {
    return jsonEncode({
      "templates": {
        // шаблоны, которые могут быть использованы в секции patch
        "post-card": {
          "type": "container",
          "direction": "vertical",
          "items": [
            {
              "type": "container",
              "orientation": "horizontal",
              "paddings": {"left": 16, "right": 16, "top": 12, "bottom": 16},
              "items": [
                {
                  "type": "image",
                  "width": {"type": "fixed", "value": "40", "unit": "dp"},
                  "height": {"type": "fixed", "value": "40", "unit": "dp"},
                  "\$image_url": "avatar",
                  "margins": {"right": 16}
                },
                {
                  "type": "container",
                  "orientation": "vertical",
                  "paddings": {"bottom": 4},
                  "items": [
                    {
                      "type": "text",
                      "\$text": "fullname",
                      "font_size": 16,
                      "margins": {"bottom": 4}
                    },
                    {
                      "type": "text",
                      "\$text": "department",
                      "font_size": 12,
                      "text_color": "#9098b1"
                    }
                  ]
                }
              ]
            },
            {
              /*  "type": "gallery",
              "scroll_mode": "paging",*/
              "type": "pager",
              "id": "pagerId",
              "height": {"type": "fixed", "value": 400},
              "layout_mode": {
                "type": "fixed",
                "neighbour_page_width": {"type": "fixed", "value": 16}
              },
              "\$items": "images"
            }
          ]
        }
      },
      "patch": {
        "changes": [
          {
            "id": "posts",
            "items": [
              {
                "type": "post-card",
                "avatar": "https://alllll.ru/img/avatar.png",
                "fullname": "Калинин Александр О.",
                "department": "Финансово-административная служба $page",
                "images": [
                  {
                    "type": "image",
                    "image_url": "https://alllll.ru/img/picture.png",
                    "scale": "stretch"
                  },
                  {
                    "type": "image",
                    "image_url": "https://alllll.ru/img/picture.png",
                    "scale": "stretch",
                    "filters": [
                      {"type": "blur", "radius": "8"}
                    ]
                  }
                ]
              },
              {
                "type": "post-card",
                "avatar": "https://alllll.ru/img/avatar.png",
                "fullname": "Калинин Александр О.",
                "department": "Финансово-административная служба $page",
                "images": [
                  {
                    "type": "image",
                    "image_url": "https://alllll.ru/img/picture.png",
                    "scale": "stretch"
                  },
                  {
                    "type": "image",
                    "image_url": "https://alllll.ru/img/picture.png",
                    "scale": "stretch",
                    "filters": [
                      {"type": "blur", "radius": "8"}
                    ]
                  }
                ]
              },
              {
                "type": "post-card",
                "avatar": "https://alllll.ru/img/avatar.png",
                "fullname": "Калинин Александр О.",
                "department": "Финансово-административная служба $page",
                "images": [
                  {
                    "type": "image",
                    "image_url": "https://alllll.ru/img/picture.png",
                    "scale": "stretch"
                  },
                  {
                    "type": "image",
                    "image_url": "https://alllll.ru/img/picture.png",
                    "scale": "stretch",
                    "filters": [
                      {"type": "blur", "radius": "8"}
                    ]
                  }
                ],
                "visibility_actions": [
                  {
                    "log_id": "content_01_visibility",
                    "visibility_percentage": 100,
                    "visibility_duration": 1000,
                    "url": "div-action://download?url=<patch_url>"
                  }
                ]
              }
            ]
          }
        ],
      }
    });
  }

  List<Post> _generatePosts() {
    return List.generate(
        20,
        (index) => Post(
            id: index,
            avatar: 'https://alllll.ru/img/avatar.png',
            fullname: 'Калинин Александр О.',
            department: 'Финансово-административная служба',
            images: [
              'https://alllll.ru/img/picture.png',
              'https://alllll.ru/img/picture.png',
              'https://alllll.ru/img/picture.png',
            ],
            youLiked: false,
            likes: 4000,
            likesAvatars: [
              'https://alllll.ru/img/avatar.png',
              'https://alllll.ru/img/avatar.png',
              'https://alllll.ru/img/avatar.png',
            ],
            date: DateTime.now().subtract(Duration(days: index)),
            description:
                'Всем рок! Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temor incididunt...'));
  }
}
