



##### [Back to Application docs](./README.md)

## Theme Methods
Responsible for themes
* [getAllPages](#getallpages)
* [getPage](#getpage)
* [getAppliedTheme](#getappliedtheme)
* [getThemeForPreview](#getthemeforpreview)
* [getAppliedThemeV2](#getappliedthemev2)
* [getThemeForPreviewV2](#getthemeforpreviewv2)



## Methods with example and description


#### getAllPages
Get all pages of a theme




```swift
applicationClient.theme.getAllPages(themeId: themeId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| themeId | String | yes | ID of the theme to be retrieved |  



Use this API to retrieve all the available pages of a theme by its ID.

*Returned Response:*




[AllAvailablePageSchema](#AllAvailablePageSchema)

Success. Returns an array all the pages of the theme. Refer `AllAvailablePageSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; All pages</i></summary>

```json
{
  "value": {
    "pages": [
      {
        "path": "products",
        "type": "system",
        "seo": {
          "title": "",
          "description": "",
          "_id": "60210832d7e981639e13f6b2"
        },
        "_id": "60ab5ca6d572fed64294eb0e",
        "value": "product-listing",
        "text": "Product Listing",
        "theme": "5fb3ee4194a5181feeeba8e5",
        "sections_meta": [],
        "__v": 9
      },
      {
        "path": "collection",
        "type": "system",
        "seo": {
          "title": "",
          "description": "",
          "_id": "60210832d7e981fc5d13f6b9"
        },
        "_id": "60ab5ca6d572fed64294eaf9",
        "text": "Collection Listing",
        "value": "collection-listing",
        "theme": "5fb3ee4194a5181feeeba8e5",
        "sections_meta": [],
        "__v": 9
      },
      {
        "path": "compare",
        "type": "system",
        "seo": {
          "title": "",
          "description": "",
          "_id": "60210832d7e981cbca13f6b1"
        },
        "_id": "60ab5ca6d572fed64294eb0b",
        "value": "compare-products",
        "text": "Compare Products",
        "theme": "5fb3ee4194a5181feeeba8e5",
        "sections_meta": [],
        "__v": 9
      },
      {
        "path": "cart/bag",
        "type": "system",
        "seo": {
          "title": "",
          "description": "",
          "_id": "60210832d7e9812fdf13f6ae"
        },
        "_id": "60ab5ca6d572fed64294eb02",
        "value": "cart-landing",
        "text": "Cart Landing",
        "theme": "5fb3ee4194a5181feeeba8e5",
        "sections_meta": [],
        "__v": 9
      },
      {
        "path": "product",
        "type": "system",
        "seo": {
          "title": "",
          "description": "",
          "_id": "60210832d7e9815c9713f6ab"
        },
        "_id": "60ab5ca6d572fed64294eaf6",
        "text": "Product Description",
        "value": "product-description",
        "theme": "5fb3ee4194a5181feeeba8e5",
        "sections_meta": [],
        "__v": 9
      },
      {
        "path": "blog",
        "type": "system",
        "seo": {
          "title": "",
          "description": "",
          "_id": "60ab5ca6d572fed64294eb22"
        },
        "_id": "60ab5ca6d572fed64294eb23",
        "sections_meta": [],
        "value": "blog",
        "text": "Blog",
        "theme": "5fb3ee4194a5181feeeba8e5",
        "__v": 9
      },
      {
        "path": "sections/cookie",
        "type": "sections",
        "seo": {
          "title": "",
          "description": "",
          "_id": "60210832d7e9814fed13f6b5"
        },
        "_id": "60ab5ca6d572fed64294eb17",
        "text": "cookie",
        "value": "cookie",
        "theme": "5fb3ee4194a5181feeeba8e5",
        "sections_meta": [],
        "__v": 9
      },
      {
        "path": "sections/vivek",
        "type": "sections",
        "seo": {
          "title": "",
          "description": "",
          "_id": "60210832d7e981b32713f6b6"
        },
        "_id": "60ab5ca6d572fed64294eb1a",
        "text": "vivek",
        "value": "vivek",
        "theme": "5fb3ee4194a5181feeeba8e5",
        "sections_meta": [],
        "__v": 9
      },
      {
        "path": "about-us",
        "type": "system",
        "seo": {
          "title": "",
          "description": "",
          "_id": "60ab5ca6d572fed64294eb28"
        },
        "_id": "60ab5ca6d572fed64294eb29",
        "sections_meta": [],
        "value": "about-us",
        "text": "About Us",
        "theme": "5fb3ee4194a5181feeeba8e5",
        "__v": 9
      },
      {
        "path": "wishlist",
        "type": "system",
        "seo": {
          "title": "",
          "description": "",
          "_id": "60210832d7e981dd2d13f6b3"
        },
        "_id": "60ab5ca6d572fed64294eb11",
        "value": "wishlist",
        "text": "Wishlist",
        "theme": "5fb3ee4194a5181feeeba8e5",
        "sections_meta": [],
        "__v": 9
      },
      {
        "path": "brands",
        "type": "system",
        "seo": {
          "title": "",
          "description": "",
          "_id": "60210832d7e981161a13f6ad"
        },
        "_id": "60ab5ca6d572fed64294eaff",
        "value": "brands",
        "text": "Brands",
        "theme": "5fb3ee4194a5181feeeba8e5",
        "sections_meta": [],
        "__v": 9
      },
      {
        "path": "",
        "type": "system",
        "seo": {
          "title": "",
          "description": "",
          "_id": "60210832d7e98115b013f6ac"
        },
        "_id": "60ab5ca6d572fed64294eafc",
        "value": "home",
        "text": "Home",
        "theme": "5fb3ee4194a5181feeeba8e5",
        "sections_meta": [],
        "__v": 9
      },
      {
        "path": "collections",
        "type": "system",
        "seo": {
          "title": "",
          "description": "",
          "_id": "60210832d7e981ad0b13f6b0"
        },
        "_id": "60ab5ca6d572fed64294eb08",
        "value": "collections",
        "text": "Collections",
        "theme": "5fb3ee4194a5181feeeba8e5",
        "sections_meta": [],
        "__v": 9
      },
      {
        "path": "categories",
        "type": "system",
        "seo": {
          "title": "",
          "description": "",
          "_id": "60210832d7e981872c13f6af"
        },
        "_id": "60ab5ca6d572fed64294eb05",
        "value": "categories",
        "text": "Categories",
        "theme": "5fb3ee4194a5181feeeba8e5",
        "sections_meta": [],
        "__v": 9
      },
      {
        "path": "sections/test",
        "type": "sections",
        "seo": {
          "title": "",
          "description": "",
          "_id": "60210832d7e98177f713f6b4"
        },
        "_id": "60ab5ca6d572fed64294eb14",
        "text": "Test",
        "value": "test",
        "theme": "5fb3ee4194a5181feeeba8e5",
        "sections_meta": [],
        "__v": 9
      },
      {
        "path": "sections/vinit",
        "type": "sections",
        "seo": {
          "title": "",
          "description": "",
          "_id": "60210832d7e98170b813f6b8"
        },
        "_id": "60ab5ca6d572fed64294eb20",
        "text": "vinit",
        "value": "vinit",
        "theme": "5fb3ee4194a5181feeeba8e5",
        "sections_meta": [],
        "__v": 9
      },
      {
        "path": "sections/maggie",
        "type": "sections",
        "seo": {
          "title": "",
          "description": "",
          "_id": "60210832d7e981469613f6b7"
        },
        "_id": "60ab5ca6d572fed64294eb1d",
        "text": "maggie",
        "value": "maggie",
        "theme": "5fb3ee4194a5181feeeba8e5",
        "sections_meta": [],
        "__v": 9
      }
    ]
  }
}
```
</details>

</details>









---


#### getPage
Get page of a theme




```swift
applicationClient.theme.getPage(themeId: themeId, pageValue: pageValue) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| themeId | String | yes | ID of the theme to be retrieved |   
| pageValue | String | yes | Value of the page to be retrieved |  



Use this API to retrieve a page of a theme.

*Returned Response:*




[AvailablePageSchema](#AvailablePageSchema)

Success. Returns an object of the pages.  Refer `AvailablePageSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Home page</i></summary>

```json
{
  "value": {
    "path": "",
    "type": "system",
    "seo": {
      "title": "",
      "description": "",
      "_id": "60210832d7e98115b013f6ac"
    },
    "props": [],
    "_id": "60ab5ca6d572fed64294eafc",
    "sections": [
      {
        "blocks": [],
        "predicate": {
          "screen": {
            "mobile": false,
            "desktop": false,
            "tablet": false
          },
          "user": {
            "authenticated": true,
            "anonymous": true
          },
          "route": {
            "selected": "none",
            "exactURL": "",
            "query": {
              "utm": "facebook"
            }
          }
        },
        "name": "customHtml",
        "props": {
          "code": {
            "type": "code",
            "value": "<p style=\"text-align:right;\"><a href=\"tel:+919820204442\"><img src=\"https://dabuttonfactory.com/button.png?t=For+any+queries%2C+call%3A+%2B91+98202+04442&f=Open+Sans-Bold&ts=21&tc=fff&hp=20&vp=15&c=round&bgt=unicolored&bgc=7043f7\"/> </a></p>"
          }
        }
      },
      {
        "blocks": [],
        "predicate": {
          "screen": {
            "mobile": true,
            "desktop": true,
            "tablet": true
          },
          "user": {
            "authenticated": true,
            "anonymous": true
          },
          "route": {
            "selected": "none",
            "exactURL": "",
            "query": {
              "udm": "vivek"
            }
          }
        },
        "name": "brands-listing",
        "props": {
          "title": {
            "type": "text",
            "value": "Popular rrrrr"
          },
          "header": {
            "type": "header"
          },
          "brand_type": {
            "value": "all",
            "type": "radio"
          },
          "department": {
            "type": "department"
          },
          "item_count": {
            "value": 5,
            "type": "range"
          },
          "layout": {
            "value": "horizontal",
            "type": "select"
          },
          "view_all": {
            "value": false,
            "type": "checkbox"
          }
        }
      },
      {
        "blocks": [
          {
            "type": "product",
            "name": "Product",
            "props": {
              "product": {
                "type": "product"
              }
            }
          },
          {
            "type": "product",
            "name": "Product",
            "props": {
              "product": {
                "type": "product"
              }
            }
          },
          {
            "type": "product",
            "name": "Product",
            "props": {
              "product": {
                "type": "product"
              }
            }
          },
          {
            "type": "product",
            "name": "Product",
            "props": {
              "product": {
                "type": "product"
              }
            }
          }
        ],
        "predicate": {
          "screen": {
            "mobile": true,
            "desktop": true,
            "tablet": true
          },
          "user": {
            "authenticated": false,
            "anonymous": true
          },
          "route": {
            "selected": "none",
            "exactURL": ""
          }
        },
        "name": "featuredProducts",
        "props": {
          "heading": {
            "value": "Featured Products",
            "type": "text"
          },
          "item_count": {
            "type": "range",
            "value": 4
          },
          "full_width": {
            "value": false,
            "type": "checkbox"
          }
        },
        "preset": {
          "blocks": [
            {
              "name": "Product"
            },
            {
              "name": "Product"
            },
            {
              "name": "Product"
            },
            {
              "name": "Product"
            }
          ]
        }
      },
      {
        "blocks": [],
        "predicate": {
          "screen": {
            "mobile": true,
            "desktop": true,
            "tablet": true
          },
          "user": {
            "authenticated": true,
            "anonymous": true
          },
          "route": {
            "selected": "none",
            "exactURL": "",
            "query": {
              "": ""
            }
          }
        },
        "name": "categoryListPage",
        "props": {
          "heading": {
            "type": "text",
            "value": "Explore Categories"
          },
          "layout": {
            "type": "select",
            "value": "grid"
          },
          "item_count": {
            "value": 5,
            "type": "range"
          },
          "view_all": {
            "value": false,
            "type": "checkbox"
          }
        }
      },
      {
        "blocks": [],
        "predicate": {
          "screen": {
            "mobile": true,
            "desktop": true,
            "tablet": true
          },
          "user": {
            "authenticated": true,
            "anonymous": true
          },
          "route": {
            "selected": "none",
            "exactURL": "",
            "query": {
              "": ""
            }
          }
        },
        "name": "heroBanner",
        "props": {
          "ctaLink": {
            "type": "url",
            "value": "https://uniket.hostx0.de/about-us"
          }
        }
      },
      {
        "blocks": [],
        "predicate": {
          "screen": {
            "mobile": true,
            "desktop": true,
            "tablet": true
          },
          "user": {
            "authenticated": true,
            "anonymous": true
          },
          "route": {
            "selected": "none",
            "exactURL": "",
            "query": {
              "": ""
            }
          }
        },
        "name": "imageBanner",
        "props": {
          "image": {
            "value": "",
            "type": "image_picker"
          },
          "full_width": {
            "value": false,
            "type": "checkbox"
          },
          "overlayLayout": {
            "value": "left",
            "type": "select"
          },
          "overlayImage": {
            "value": "",
            "type": "image_picker"
          },
          "text": {
            "value": "",
            "type": "text"
          },
          "text_color": {
            "value": "#000",
            "type": "color"
          },
          "ctaLink": {
            "value": "",
            "type": "url"
          },
          "ctaText": {
            "value": "",
            "type": "text"
          },
          "layout": {
            "type": "select",
            "value": "full"
          },
          "height": {
            "type": "select",
            "value": "h-auto"
          }
        }
      },
      {
        "blocks": [],
        "predicate": {
          "screen": {
            "mobile": true,
            "desktop": true,
            "tablet": true
          },
          "user": {
            "authenticated": true,
            "anonymous": true
          },
          "route": {
            "selected": "none",
            "exactURL": ""
          }
        },
        "name": "brands-listing",
        "props": {
          "title": {
            "type": "text",
            "value": "asdfasdf"
          },
          "header": {
            "type": "header"
          },
          "brand_type": {
            "value": "all",
            "type": "radio"
          },
          "department": {
            "type": "department"
          },
          "item_count": {
            "value": 5,
            "type": "range"
          },
          "layout": {
            "value": "horizontal",
            "type": "select"
          },
          "view_all": {
            "value": false,
            "type": "checkbox"
          }
        }
      }
    ],
    "value": "home",
    "text": "Home",
    "theme": "5fb3ee4194a5181feeeba8e5",
    "sections_meta": [],
    "__v": 9
  }
}
```
</details>

</details>









---


#### getAppliedTheme
Get the theme currently applied to an application




```swift
applicationClient.theme.getAppliedTheme() { (response, error) in
    // Use response
}
```






An application has multiple themes, but only one theme can be applied at a time. Use this API to retrieve the theme currently applied to the application.

*Returned Response:*




[ThemesSchema](#ThemesSchema)

Success. Returns a JSON object of the theme. Check the example shown below or    refer `ThemesSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Applied Theme</i></summary>

```json
{
  "value": {
    "information": {
      "images": {
        "desktop": [
          "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/pictures/free/original/artisan-desktop.png"
        ],
        "android": [
          "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/pictures/free/original/artisan-mobile.png"
        ],
        "ios": [
          "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/pictures/free/original/artisan-mobile.png"
        ],
        "thumbnail": [
          "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/pictures/free/original/artisan-desktop.png"
        ]
      },
      "features": [
        "Responsive"
      ],
      "name": "Akash-Artisan"
    },
    "src": {
      "link": "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/sources/J-1s-N-pl-archive.zip"
    },
    "assets": {
      "css": {
        "link": "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/assets/Ia4m885Mw2-themeBundle.css"
      },
      "umd_js": {
        "link": "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/assets/nEPGyc15g-themeBundle.umd.min.js"
      },
      "common_js": {
        "link": "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/assets/5f7tOB5rpq-themeBundle.common.js"
      }
    },
    "config": {
      "preset": {
        "sections": [
          {
            "page_sections": [
              {
                "blocks": [
                  {
                    "type": "gallery_image",
                    "name": "Image",
                    "props": {
                      "image": {
                        "type": "image_picker",
                        "value": "https://hdn-1.fynd.com/company/163/applications/5d5265c8f8ad9cae6dbf18f1/theme/pictures/free/original/theme-image-1601219133573.jpeg"
                      },
                      "slide_link": {
                        "type": "url",
                        "value": "https://www.turtleonline.in/collection/men-collection-vcahuo2q"
                      }
                    }
                  },
                  {
                    "type": "gallery_image",
                    "name": "Image",
                    "props": {
                      "image": {
                        "type": "image_picker",
                        "value": "https://hdn-1.fynd.com/company/163/applications/5d5265c8f8ad9cae6dbf18f1/theme/pictures/free/original/theme-image-1601219184350.jpeg"
                      },
                      "slide_link": {
                        "type": "url",
                        "value": "https://www.turtleonline.in/collection/shirts-5e9654ad"
                      }
                    }
                  }
                ],
                "predicate": {
                  "screen": {
                    "mobile": true,
                    "desktop": true,
                    "tablet": true
                  },
                  "user": {
                    "authenticated": true,
                    "anonymous": true
                  },
                  "route": {
                    "selected": "none",
                    "query": {},
                    "exact_u_r_l": ""
                  }
                },
                "name": "image-carousel",
                "props": {
                  "slide_height": {
                    "type": "select",
                    "value": "adapt"
                  },
                  "autoplay": {
                    "type": "checkbox",
                    "value": false
                  },
                  "slide_interval": {
                    "type": "range",
                    "value": 2
                  }
                }
              },
              {
                "blocks": [
                  {
                    "type": "collection",
                    "name": "Collection",
                    "props": {
                      "collection": {
                        "type": "collection",
                        "value": "accessories-7ee89654"
                      },
                      "title": {
                        "type": "text",
                        "value": "Turtle sports club"
                      },
                      "subtitle": {
                        "type": "text",
                        "value": "Casual Collections"
                      },
                      "overlay_image": {
                        "type": "image_picker",
                        "value": "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/pictures/free/original/casual_nfadbl.jpg"
                      }
                    }
                  },
                  {
                    "type": "collection",
                    "name": "Collection",
                    "props": {
                      "collection": {
                        "type": "collection",
                        "value": "bottom-wear-fb133293"
                      },
                      "title": {
                        "type": "text",
                        "value": "Formal Collection"
                      },
                      "subtitle": {
                        "type": "text",
                        "value": "Turtle Tailor Mark"
                      },
                      "overlay_image": {
                        "type": "image_picker",
                        "value": "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/pictures/free/original/tailors_nsrrfl.jpg"
                      }
                    }
                  },
                  {
                    "type": "collection",
                    "name": "Collection",
                    "props": {
                      "collection": {
                        "type": "collection",
                        "value": "bottom-wear-fb133293"
                      },
                      "title": {
                        "type": "text",
                        "value": "Bottomwear"
                      },
                      "subtitle": {
                        "type": "text",
                        "value": "Chinos | Trousers | Pants"
                      },
                      "overlay_image": {
                        "type": "image_picker",
                        "value": "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/pictures/free/original/bottomwear_tdkhn2.jpg"
                      }
                    }
                  },
                  {
                    "type": "collection",
                    "name": "Collection",
                    "props": {
                      "collection": {
                        "type": "collection",
                        "value": "t-shirt-7ee3cbcd"
                      },
                      "title": {
                        "type": "text",
                        "value": "Shirts"
                      },
                      "subtitle": {
                        "type": "text",
                        "value": "Casual"
                      },
                      "overlay_image": {
                        "type": "image_picker",
                        "value": "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/pictures/free/original/t-shirt_re9srk.jpg"
                      }
                    }
                  }
                ],
                "predicate": {
                  "screen": {
                    "mobile": true,
                    "desktop": true,
                    "tablet": true
                  },
                  "user": {
                    "authenticated": true,
                    "anonymous": true
                  },
                  "route": {
                    "selected": "none",
                    "query": {},
                    "exact_u_r_l": ""
                  }
                },
                "name": "collectionGrid",
                "props": {
                  "title": {
                    "type": "text",
                    "value": "Collections"
                  },
                  "subtitle": {
                    "type": "text",
                    "value": "Buy from our"
                  },
                  "full_width": {
                    "type": "checkbox",
                    "value": false
                  }
                }
              }
            ],
            "page_key": "home"
          },
          {
            "page_sections": [
              {
                "blocks": [],
                "predicate": {
                  "screen": {
                    "mobile": true,
                    "desktop": true,
                    "tablet": true
                  },
                  "user": {
                    "authenticated": true,
                    "anonymous": true
                  },
                  "route": {
                    "selected": "none",
                    "query": {},
                    "exact_u_r_l": ""
                  }
                },
                "name": "brandTemplate",
                "props": {
                  "item_count": {
                    "type": "range",
                    "value": 4
                  },
                  "full_width": {
                    "type": "checkbox",
                    "value": false
                  },
                  "heading": {
                    "type": "text",
                    "value": ""
                  },
                  "brand_type": {
                    "type": "radio",
                    "value": "all"
                  },
                  "layout": {
                    "type": "select",
                    "value": "grid"
                  },
                  "department": {
                    "type": "department",
                    "value": "others"
                  }
                }
              }
            ],
            "page_key": "brands"
          },
          {
            "page_sections": [],
            "page_key": "cart-landing"
          },
          {
            "page_sections": [
              {
                "blocks": [],
                "predicate": {
                  "screen": {
                    "mobile": true,
                    "desktop": true,
                    "tablet": true
                  },
                  "user": {
                    "authenticated": true,
                    "anonymous": true
                  },
                  "route": {
                    "selected": "none",
                    "query": {},
                    "exact_u_r_l": ""
                  }
                },
                "name": "categoriesTemplate",
                "props": {
                  "item_count": {
                    "type": "range",
                    "value": 4
                  },
                  "full_width": {
                    "type": "checkbox",
                    "value": false
                  },
                  "heading": {
                    "type": "text",
                    "value": ""
                  },
                  "layout": {
                    "type": "select",
                    "value": "grid"
                  },
                  "view_all": {
                    "type": "checkbox",
                    "value": false
                  }
                }
              }
            ],
            "page_key": "categories"
          },
          {
            "page_sections": [
              {
                "blocks": [],
                "predicate": {
                  "screen": {
                    "mobile": true,
                    "desktop": true,
                    "tablet": true
                  },
                  "user": {
                    "authenticated": true,
                    "anonymous": true
                  },
                  "route": {
                    "selected": "none",
                    "query": {},
                    "exact_u_r_l": ""
                  }
                },
                "name": "collectionTemplate",
                "props": {
                  "heading": {
                    "type": "text",
                    "value": "Featured Collections"
                  },
                  "item_count": {
                    "type": "range",
                    "value": 4
                  },
                  "full_width": {
                    "type": "checkbox",
                    "value": false
                  },
                  "layout": {
                    "type": "select",
                    "value": "grid"
                  }
                }
              }
            ],
            "page_key": "collections"
          },
          {
            "page_sections": [],
            "page_key": "compare-products"
          },
          {
            "page_sections": [],
            "page_key": "product-description"
          },
          {
            "page_sections": [],
            "page_key": "product-listing"
          },
          {
            "page_sections": [],
            "page_key": "wishlist"
          }
        ]
      },
      "global_schema": {
        "props": [
          {
            "type": "color",
            "id": "header_bg_color",
            "default": "#ffffff",
            "category": "Header",
            "label": "Header background Color"
          },
          {
            "type": "color",
            "id": "footer_bg_color",
            "default": "#1b1b1b",
            "category": "Footer",
            "label": "Footer background Color"
          },
          {
            "type": "text",
            "id": "footer_text",
            "default": "",
            "category": "Footer",
            "label": "Footer Text"
          },
          {
            "type": "checkbox",
            "id": "disable_cart",
            "default": false,
            "category": "Cart",
            "label": "Disable Cart"
          }
        ]
      },
      "current": "default",
      "page_schema": [
        {
          "props": [],
          "_id": "5fe182f763d26dadc8d205c6",
          "page": "blog"
        },
        {
          "props": [],
          "_id": "5fe182f763d26d0a36d205c7",
          "page": "brands"
        },
        {
          "props": [
            {
              "type": "checkbox",
              "id": "gst",
              "label": "GST",
              "default": true,
              "info": "Show GST on cart"
            },
            {
              "type": "checkbox",
              "id": "staff_selection",
              "label": "Staff Selection",
              "default": true,
              "info": "Show Staff selection on Cart"
            },
            {
              "type": "checkbox",
              "id": "enable_customer",
              "label": "Customer",
              "default": true,
              "info": "Placing on behalf of customer"
            },
            {
              "type": "checkbox",
              "id": "enable_guest",
              "label": "Enable Guest Checkout",
              "default": true,
              "info": "Enable Continue as Guest"
            }
          ],
          "_id": "5fe182f763d26d81c5d205c8",
          "page": "cart-landing"
        },
        {
          "props": [],
          "_id": "5fe182f763d26d7e15d205c9",
          "page": "cart-review"
        },
        {
          "props": [],
          "_id": "5fe182f763d26d270ed205ca",
          "page": "categories"
        },
        {
          "props": [],
          "_id": "5fe182f763d26d9b4fd205cb",
          "page": "collection-listing"
        },
        {
          "props": [],
          "_id": "5fe182f763d26da6ecd205cc",
          "page": "collections"
        },
        {
          "props": [],
          "_id": "5fe182f763d26d7156d205cd",
          "page": "compare-products"
        },
        {
          "props": [],
          "_id": "5fe182f763d26d62bad205ce",
          "page": "home"
        },
        {
          "props": [],
          "_id": "5fe182f763d26d5afcd205cf",
          "page": "order-review"
        },
        {
          "props": [],
          "_id": "5fe182f763d26def8dd205d0",
          "page": "order-tracking-details"
        },
        {
          "props": [],
          "_id": "5fe182f763d26d381fd205d1",
          "page": "order-tracking"
        },
        {
          "props": [
            {
              "type": "text",
              "id": "shipping_link",
              "label": "Shipping Link",
              "default": "https://fynd.freshdesk.com/support/solutions/folders/33000111600",
              "info": "Link of shipping page"
            },
            {
              "type": "checkbox",
              "id": "original_image",
              "label": "Use original Image",
              "default": false,
              "info": "Use original product image."
            },
            {
              "type": "checkbox",
              "id": "wishlist",
              "label": "Wishlist",
              "default": true,
              "info": "Show Wishlist for product"
            },
            {
              "type": "checkbox",
              "id": "reviews",
              "label": "Review",
              "default": true,
              "info": "Show Reviews of product"
            },
            {
              "type": "checkbox",
              "id": "add_to_compare",
              "label": "Add to Compare",
              "default": true,
              "info": "Allow comparison of products"
            },
            {
              "type": "checkbox",
              "id": "size_guide",
              "label": "Size Guide",
              "default": true,
              "info": "Show Size Guide"
            },
            {
              "type": "checkbox",
              "id": "product_request",
              "label": "Product Request",
              "default": true,
              "info": "Show Product Request"
            },
            {
              "type": "checkbox",
              "id": "share",
              "label": "Share",
              "default": true,
              "info": "Enable Sharing product"
            },
            {
              "type": "checkbox",
              "id": "sold_by",
              "label": "Show Sold By",
              "default": true,
              "info": "Show name of the store"
            },
            {
              "type": "checkbox",
              "id": "store_selection",
              "label": "Seller Store Selection",
              "default": true,
              "info": "Allow to explicitly select stores"
            },
            {
              "type": "checkbox",
              "id": "compare_products",
              "label": "Compare Products",
              "default": true,
              "info": "Show Most Compared Products"
            },
            {
              "type": "checkbox",
              "id": "variants",
              "label": "Product Variants",
              "default": true,
              "info": "Show Product Variants"
            },
            {
              "type": "checkbox",
              "id": "ratings",
              "label": "Product Rating",
              "default": true,
              "info": "Show Product Ratings"
            },
            {
              "type": "checkbox",
              "id": "similar_products",
              "label": "Similar Products",
              "default": true,
              "info": "Show Similar Products"
            },
            {
              "type": "checkbox",
              "id": "bulk_prices",
              "label": "Bulk Prices",
              "default": true,
              "info": "Show Bulk Prices"
            },
            {
              "type": "checkbox",
              "id": "showDeliveryInfo",
              "label": "Delivery Info",
              "default": true,
              "info": "Show Delivery Date"
            }
          ],
          "_id": "5fe182f763d26d29bbd205d2",
          "page": "product-description"
        },
        {
          "props": [],
          "_id": "5fe182f763d26da5f0d205d3",
          "page": "product-listing"
        },
        {
          "props": [],
          "_id": "5fe182f763d26d4e2dd205d5",
          "page": "wishlist"
        },
        {
          "props": [
            {
              "default": true,
              "id": "header",
              "label": "Header",
              "type": "checkbox"
            },
            {
              "default": true,
              "id": "footer",
              "label": "Footer",
              "type": "checkbox"
            }
          ],
          "_id": "5fe7166cbaae343115de8555",
          "page": "tesr"
        }
      ],
      "list": [
        {
          "name": "default",
          "global_config": {
            "static": {
              "props": {
                "colors": {
                  "primary_color": "#7043f7",
                  "secondary_color": "#02d1cb",
                  "accent_color": "#FFFFFF",
                  "link_color": "#7043f7",
                  "button_secondary_color": "#000000",
                  "bg_color": "#F8F8F8"
                }
              }
            },
            "custom": {
              "props": {
                "disable_cart": false
              }
            }
          },
          "page": [
            {
              "settings": {
                "props": {
                  "show_info_message": true
                }
              },
              "page": "cart-landing"
            }
          ],
          "_id": "5fc4bb9078e957737e7d79a3"
        }
      ]
    },
    "colors": {
      "primary_color": "#41434C",
      "secondary_color": "#41434C",
      "accent_color": "#FFFFFF",
      "link_color": "#33B1C0",
      "button_secondary_color": "#000000",
      "bg_color": "#F8F8F8"
    },
    "font": {
      "variants": {
        "light": {
          "name": "300",
          "file": ""
        },
        "regular": {
          "name": "regular",
          "file": "https://fonts.gstatic.com/s/judson/v13/FeVRS0Fbvbc14VxRD7N01bV7kg.ttf"
        },
        "medium": {
          "name": "500",
          "file": ""
        },
        "semi_bold": {
          "name": "600",
          "file": ""
        },
        "bold": {
          "name": "700",
          "file": "https://fonts.gstatic.com/s/judson/v13/FeVSS0Fbvbc14Vxps5xQ3Z5nm29Gww.ttf"
        }
      },
      "family": "Judson"
    },
    "applied": true,
    "published": false,
    "archived": false,
    "customized": true,
    "version": "1.1.19",
    "tags": [],
    "_id": "5fe17f7063d26dc54fd202b4",
    "pages": {
      "home": {
        "path": "",
        "type": "system",
        "sections": [],
        "value": "home",
        "text": "Home"
      },
      "brands": {
        "path": "brands",
        "type": "system",
        "sections": [],
        "value": "brands",
        "text": "Brands"
      },
      "cart-landing": {
        "path": "cart/bag",
        "type": "system",
        "sections": [],
        "value": "cart-landing",
        "text": "Cart Landing"
      },
      "categories": {
        "path": "categories",
        "type": "system",
        "sections": [],
        "value": "categories",
        "text": "Categories"
      },
      "collections": {
        "path": "collections",
        "type": "system",
        "sections": [],
        "value": "collections",
        "text": "Collections"
      },
      "compare-products": {
        "path": "compare",
        "type": "system",
        "sections": [],
        "value": "compare-products",
        "text": "Compare Products"
      },
      "product-description": {
        "path": "product",
        "type": "system",
        "sections": [],
        "value": "product-description",
        "text": "Product Description"
      },
      "product-listing": {
        "path": "products",
        "type": "system",
        "sections": [],
        "value": "product-listing",
        "text": "Product Listing"
      },
      "collection-listing": {
        "path": "collection",
        "type": "system",
        "sections": [],
        "value": "collection-listing",
        "text": "COllection Listing"
      },
      "wishlist": {
        "path": "wishlist",
        "type": "system",
        "sections": [],
        "value": "wishlist",
        "text": "Wishlist"
      }
    },
    "available_sections": [
      {
        "props": [
          {
            "type": "text",
            "id": "heading",
            "default": "Brands",
            "label": "Brands Heading"
          },
          {
            "type": "radio",
            "id": "brand_type",
            "default": "all",
            "options": [
              {
                "value": "all",
                "text": "All"
              },
              {
                "value": "department",
                "text": "Department"
              },
              {
                "value": "handpicked",
                "text": "Handpicked"
              }
            ]
          },
          {
            "type": "department",
            "id": "department",
            "label": "Department",
            "info": "Select a department of brands",
            "note": "Department only applies if 'department' type is selected"
          },
          {
            "type": "range",
            "id": "item_count",
            "min": 3,
            "max": 5,
            "step": 1,
            "unit": "",
            "label": "Items per row",
            "default": 4,
            "info": "Maximum items allowed per row"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          },
          {
            "id": "layout",
            "type": "select",
            "options": [
              {
                "value": "grid",
                "text": "Grid View"
              },
              {
                "value": "horizontal",
                "text": "Horizontal View"
              }
            ],
            "default": "grid",
            "label": "Layout",
            "info": "Alignment of content"
          },
          {
            "type": "checkbox",
            "id": "view_all",
            "default": false,
            "label": "Show View All"
          }
        ],
        "blocks": [
          {
            "type": "brand-item",
            "name": "Brand Item",
            "props": [
              {
                "type": "brand",
                "id": "brand",
                "label": "Select Brand"
              }
            ]
          }
        ],
        "_id": "5feacca5bec232d59b89283a",
        "name": "brandTemplate",
        "label": "Brands List Page"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "heading",
            "default": "Categories",
            "label": "Categories Heading"
          },
          {
            "id": "layout",
            "type": "select",
            "options": [
              {
                "value": "grid",
                "text": "Grid View"
              },
              {
                "value": "horizontal",
                "text": "Horizontal View"
              }
            ],
            "default": "grid",
            "label": "Layout",
            "info": "Alignment of content"
          },
          {
            "type": "range",
            "id": "item_count",
            "min": 3,
            "max": 5,
            "step": 1,
            "unit": "",
            "label": "Items per row",
            "default": 4,
            "info": "Maximum items allowed per row"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          },
          {
            "type": "checkbox",
            "id": "view_all",
            "default": false,
            "label": "Show View All",
            "info": "Check to show View All Button"
          }
        ],
        "blocks": [],
        "_id": "5feacca5bec232404189283b",
        "name": "categoriesTemplate",
        "label": "Categories Page"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "title",
            "default": "",
            "label": "Title"
          },
          {
            "type": "text",
            "id": "subtitle",
            "default": "",
            "label": "Subtitle"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          }
        ],
        "blocks": [
          {
            "type": "collection",
            "name": "Collection",
            "props": [
              {
                "type": "collection",
                "id": "collection",
                "label": "Select a collection"
              },
              {
                "type": "image_picker",
                "id": "overlayImage",
                "default": "",
                "label": "Background image",
                "info": "Background Image"
              },
              {
                "type": "text",
                "id": "title",
                "default": "",
                "label": "Overlay title"
              },
              {
                "type": "text",
                "id": "subtitle",
                "default": "",
                "label": "Overlay subtitle"
              }
            ]
          }
        ],
        "_id": "5feacca5bec2321fd589283c",
        "name": "collectionGrid",
        "label": "Collection Grid"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "heading",
            "default": "Collection List",
            "label": "Collection Heading",
            "info": "Collection Heading"
          },
          {
            "type": "range",
            "id": "item_count",
            "min": 3,
            "max": 5,
            "step": 1,
            "unit": "",
            "label": "Collections per row",
            "default": 2,
            "info": "Maximum items allowed per row"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          }
        ],
        "blocks": [
          {
            "type": "collection",
            "name": "Collection",
            "props": [
              {
                "type": "collection",
                "id": "collection",
                "label": "Select a collection"
              }
            ]
          }
        ],
        "_id": "5feacca5bec2323bf689283d",
        "name": "collectionList",
        "label": "Collection List"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "heading",
            "default": "Collections",
            "label": "Collection Heading"
          },
          {
            "type": "range",
            "id": "item_count",
            "min": 3,
            "max": 5,
            "step": 1,
            "unit": "",
            "label": "Collections per row",
            "default": 4,
            "info": "Maximum items allowed per row"
          },
          {
            "type": "radio",
            "id": "collection_type",
            "default": "all",
            "options": [
              {
                "value": "all",
                "text": "All"
              },
              {
                "value": "handpicked",
                "text": "Handpicked"
              }
            ]
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          },
          {
            "id": "layout",
            "type": "select",
            "options": [
              {
                "value": "grid",
                "text": "Grid View"
              },
              {
                "value": "horizontal",
                "text": "Horizontal View"
              }
            ],
            "default": "grid",
            "label": "Layout",
            "info": "Alignment of content"
          },
          {
            "type": "checkbox",
            "id": "view_all",
            "default": false,
            "label": "Show View All"
          }
        ],
        "blocks": [
          {
            "type": "collection-item",
            "name": "Collection Item",
            "props": [
              {
                "type": "collection",
                "id": "collection",
                "label": "Select collection"
              }
            ]
          }
        ],
        "_id": "5feacca5bec23263b489283e",
        "name": "collectionTemplate",
        "label": "Collection List Page"
      },
      {
        "props": [
          {
            "type": "code",
            "id": "code",
            "label": "Custom HTML",
            "info": "Add Your custom HTML Code below. You can also use the full screen icon to open a code editor and add your code"
          }
        ],
        "blocks": [],
        "_id": "5feacca5bec232409489283f",
        "name": "customHtml",
        "label": "Custom HTML"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "heading",
            "default": "Featured Products",
            "label": "Section Heading"
          },
          {
            "type": "range",
            "id": "item_count",
            "min": 3,
            "max": 5,
            "step": 1,
            "unit": "",
            "label": "Products per row",
            "default": 4,
            "info": "Maximum items allowed per row"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          }
        ],
        "blocks": [
          {
            "type": "product",
            "name": "Product",
            "props": [
              {
                "type": "product",
                "id": "product",
                "label": "Select a Product",
                "info": "Product Item to be displayed"
              }
            ]
          }
        ],
        "_id": "5feacca5bec2326213892840",
        "name": "featuredProducts",
        "label": "Featured Products",
        "preset": {
          "blocks": [
            {
              "name": "Product"
            },
            {
              "name": "Product"
            },
            {
              "name": "Product"
            },
            {
              "name": "Product"
            }
          ]
        }
      },
      {
        "props": [
          {
            "type": "range",
            "id": "item_count",
            "min": 1,
            "max": 4,
            "step": 1,
            "unit": "",
            "label": "No of items",
            "default": 4,
            "info": "Maximum items allowed per row"
          }
        ],
        "blocks": [
          {
            "type": "gallery_image",
            "name": "Image",
            "props": [
              {
                "type": "image_picker",
                "id": "image",
                "label": "Gallery Image",
                "default": "https://hdn-1.fynd.com/company/163/applications/5d5265c8f8ad9cae6dbf18f1/theme/pictures/free/original/theme-image-1603773049684.svg"
              },
              {
                "type": "text",
                "id": "caption",
                "label": "Image Caption",
                "default": ""
              },
              {
                "type": "url",
                "id": "link",
                "label": "Link",
                "default": "",
                "info": "Link to redirect"
              }
            ]
          }
        ],
        "_id": "5feacca5bec2321047892841",
        "name": "gallery",
        "label": "Gallery",
        "preset": {
          "props": {
            "item_count": 4
          },
          "blocks": [
            {
              "name": "Image"
            },
            {
              "name": "Image"
            },
            {
              "name": "Image"
            },
            {
              "name": "Image"
            }
          ]
        }
      },
      {
        "props": [
          {
            "type": "url",
            "id": "ctaLink",
            "default": "",
            "label": "Redirect Link"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          }
        ],
        "blocks": [],
        "_id": "5feacca5bec232b085892842",
        "name": "heroBanner",
        "label": "Hero Banner"
      },
      {
        "props": [
          {
            "id": "image",
            "type": "image_picker",
            "label": "Hero Image",
            "default": ""
          },
          {
            "type": "text",
            "id": "heading",
            "default": "",
            "label": "Heading"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          },
          {
            "id": "overlayLayout",
            "type": "select",
            "options": [
              {
                "value": "left",
                "text": "Align Left"
              },
              {
                "value": "center",
                "text": "Align Center"
              },
              {
                "value": "right",
                "text": "Align Right"
              }
            ],
            "default": "left",
            "label": "Overlay Layout",
            "info": "Alignment of overlay content"
          },
          {
            "type": "image_picker",
            "id": "overlayImage",
            "default": "",
            "label": "Overlay image",
            "info": "Overlay Image"
          },
          {
            "type": "text",
            "id": "text",
            "default": "",
            "label": "Overlay Text"
          },
          {
            "type": "color",
            "id": "text_color",
            "default": "#000",
            "label": "Text Color"
          },
          {
            "type": "url",
            "id": "ctaLink",
            "default": "",
            "label": "Redirect Link"
          },
          {
            "type": "text",
            "id": "ctaText",
            "default": "Shop Now",
            "label": "Button Text"
          }
        ],
        "blocks": [],
        "_id": "5feacca5bec2321e74892843",
        "name": "imageBanner",
        "label": "Hero Image"
      },
      {
        "props": [
          {
            "id": "videoUrl",
            "type": "url",
            "label": "Video URL",
            "default": ""
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          },
          {
            "id": "coverUrl",
            "type": "image_picker",
            "label": "Video Cover Image URL",
            "default": ""
          },
          {
            "type": "checkbox",
            "id": "showcontrols",
            "default": false,
            "label": "Show Controls on Video",
            "info": "Check to show controls on video"
          },
          {
            "type": "select",
            "id": "size",
            "options": [
              {
                "value": "adapt",
                "text": "Adapt"
              },
              {
                "value": "small",
                "text": "Small"
              },
              {
                "value": "medium",
                "text": "Medium"
              },
              {
                "value": "large",
                "text": "Large"
              }
            ],
            "default": "adapt",
            "label": "Video Height",
            "info": "Height of Video"
          },
          {
            "type": "text",
            "id": "heading",
            "default": "",
            "label": "Heading"
          },
          {
            "type": "color",
            "id": "heading_color",
            "default": "#000",
            "label": "Headin Text Color"
          },
          {
            "type": "text",
            "id": "subHeading",
            "default": "",
            "label": "Sub-heading"
          },
          {
            "type": "color",
            "id": "subheading_color",
            "default": "#000",
            "label": "Subheading Text Color"
          },
          {
            "type": "url",
            "id": "ctaLink",
            "default": "",
            "label": "Redirect Link"
          },
          {
            "type": "text",
            "id": "ctaText",
            "default": "ShopNow",
            "label": "Button Text"
          }
        ],
        "blocks": [],
        "_id": "5feacca5bec232bfc8892844",
        "name": "videoBanner",
        "label": "Hero Video"
      },
      {
        "props": [
          {
            "type": "select",
            "id": "slide_height",
            "options": [
              {
                "value": "adapt",
                "text": "Adapt to first image"
              },
              {
                "value": "small",
                "text": "Small"
              },
              {
                "value": "medium",
                "text": "Medium"
              },
              {
                "value": "large",
                "text": "Large"
              }
            ],
            "default": "adapt",
            "label": "Slide height",
            "info": "Size of the slide"
          },
          {
            "type": "checkbox",
            "id": "autoplay",
            "default": false,
            "label": "AutoPlay Slides",
            "info": "Check to autoplay slides"
          },
          {
            "type": "range",
            "id": "slide_interval",
            "min": 1,
            "max": 10,
            "step": 1,
            "unit": "sec",
            "label": "Change slides after every",
            "default": 2,
            "info": "Autoplay slide duration"
          }
        ],
        "blocks": [
          {
            "type": "gallery_image",
            "name": "Image",
            "props": [
              {
                "type": "image_picker",
                "id": "image",
                "label": "Gallery Image"
              },
              {
                "type": "url",
                "id": "slide_link",
                "label": "Slide Link"
              }
            ]
          }
        ],
        "_id": "5feacca5bec232a916892845",
        "name": "image-carousel",
        "label": "Image Carousel",
        "preset": {
          "blocks": [
            {
              "name": "Image"
            },
            {
              "name": "Image"
            }
          ]
        }
      },
      {
        "props": [
          {
            "type": "text",
            "id": "heading",
            "default": "Featured Collections",
            "label": "Collection Heading"
          },
          {
            "type": "range",
            "id": "item_count",
            "min": 2,
            "max": 5,
            "step": 1,
            "unit": "",
            "label": "Products per row",
            "default": 2,
            "info": "Maximum items allowed per row"
          },
          {
            "type": "collection",
            "id": "collection",
            "label": "Collection",
            "info": "Select a collection to display its products"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          }
        ],
        "blocks": [],
        "_id": "5feacca5bec23258ec892846",
        "name": "productList",
        "label": "Product List",
        "preset": {
          "props": {
            "heading": "Featured Products",
            "item_count": 4,
            "collection": ""
          }
        }
      },
      {
        "props": [
          {
            "type": "checkbox",
            "id": "autoplay",
            "default": false,
            "label": "AutoPlay Slides"
          },
          {
            "type": "range",
            "id": "slide_interval",
            "min": 1,
            "max": 10,
            "step": 1,
            "unit": "sec",
            "label": "Change slides every",
            "default": 2
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          }
        ],
        "blocks": [
          {
            "type": "testimonial",
            "name": "Testimonial",
            "props": [
              {
                "type": "textarea",
                "id": "testimonialText",
                "label": "Text for Testimonial",
                "default": "",
                "info": "Text for testimonial",
                "placeholder": "Text"
              },
              {
                "type": "text",
                "id": "author",
                "label": "Customers name"
              }
            ]
          }
        ],
        "_id": "5feacca5bec23299e8892847",
        "name": "testimonials",
        "label": "Testimonial"
      },
      {
        "props": [
          {
            "type": "select",
            "id": "slide_height",
            "options": [
              {
                "value": "adapt",
                "text": "Adapt to first video"
              },
              {
                "value": "small",
                "text": "Small"
              },
              {
                "value": "medium",
                "text": "Medium"
              },
              {
                "value": "large",
                "text": "Large"
              }
            ],
            "default": "adapt",
            "label": "Slide height",
            "info": "Size of the slide"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          },
          {
            "type": "checkbox",
            "id": "autoplay",
            "default": false,
            "label": "AutoPlay Slides",
            "info": "Check to autoplay slides"
          },
          {
            "type": "range",
            "id": "slide_interval",
            "min": 1,
            "max": 10,
            "step": 1,
            "unit": "sec",
            "label": "Change slides every",
            "default": 2,
            "info": "Autoplay slide duration"
          }
        ],
        "blocks": [
          {
            "type": "video_item",
            "name": "Video Slide",
            "props": [
              {
                "id": "videoUrl",
                "type": "url",
                "label": "Video URL",
                "default": ""
              },
              {
                "type": "checkbox",
                "id": "showcontrols",
                "default": false,
                "label": "Show Controls on Video",
                "info": "Check to show controls on video"
              }
            ]
          }
        ],
        "_id": "5feacca5bec232d89b892848",
        "name": "videoCarousel",
        "label": "Video Carousel"
      }
    ],
    "sections": [
      {
        "page_sections": [
          {
            "blocks": [],
            "predicate": {
              "screen": {
                "mobile": true,
                "desktop": true,
                "tablet": true
              },
              "user": {
                "authenticated": true,
                "anonymous": true
              },
              "route": {
                "selected": "none",
                "query": {},
                "exact_u_r_l": ""
              }
            },
            "name": "brandTemplate",
            "props": {
              "title": {
                "type": "text",
                "value": "Brands"
              },
              "item_count": {
                "type": "range",
                "value": 4
              },
              "full_width": {
                "type": "checkbox",
                "value": false
              },
              "heading": {
                "type": "text",
                "value": "Brands"
              },
              "brand_type": {
                "type": "radio",
                "value": "all"
              },
              "department": {
                "type": "department",
                "value": null
              },
              "layout": {
                "type": "select",
                "value": "grid"
              },
              "view_all": {
                "type": "checkbox",
                "value": null
              }
            }
          }
        ],
        "page_key": "product-description"
      },
      {
        "page_sections": [],
        "page_key": "collection-listing"
      },
      {
        "page_sections": [
          {
            "blocks": [
              {
                "type": "brand-item",
                "name": "Brand Item",
                "props": {
                  "brand": {
                    "type": "brand",
                    "value": {
                      "display": "Apple",
                      "id": "apple"
                    }
                  }
                }
              },
              {
                "type": "brand-item",
                "name": "Brand Item",
                "props": {
                  "brand": {
                    "type": "brand",
                    "value": {
                      "display": "Gionee",
                      "id": "gionee"
                    }
                  }
                }
              }
            ],
            "predicate": {
              "screen": {
                "mobile": true,
                "desktop": true,
                "tablet": true
              },
              "user": {
                "authenticated": true,
                "anonymous": true
              },
              "route": {
                "selected": "none",
                "query": {},
                "exact_u_r_l": ""
              }
            },
            "name": "brandTemplate",
            "props": {
              "heading": {
                "type": "text",
                "value": "Brandss"
              },
              "brand_type": {
                "type": "radio",
                "value": "handpicked"
              },
              "department": {
                "type": "department"
              },
              "item_count": {
                "value": 4,
                "type": "range"
              },
              "full_width": {
                "value": false,
                "type": "checkbox"
              },
              "layout": {
                "type": "select",
                "value": "grid"
              },
              "view_all": {
                "value": false,
                "type": "checkbox"
              }
            }
          }
        ],
        "page_key": "home"
      },
      {
        "page_sections": [
          {
            "blocks": [],
            "predicate": {
              "screen": {
                "mobile": true,
                "desktop": true,
                "tablet": true
              },
              "user": {
                "authenticated": true,
                "anonymous": true
              },
              "route": {
                "selected": "none",
                "query": {},
                "exact_u_r_l": ""
              }
            },
            "name": "brandTemplate",
            "props": {
              "title": {
                "type": "text",
                "value": "Brands"
              },
              "item_count": {
                "type": "range",
                "value": 4
              },
              "full_width": {
                "type": "checkbox",
                "value": false
              }
            }
          }
        ],
        "page_key": "brands"
      },
      {
        "page_sections": [],
        "page_key": "cart-landing"
      },
      {
        "page_sections": [
          {
            "blocks": [],
            "predicate": {
              "screen": {
                "mobile": true,
                "desktop": true,
                "tablet": true
              },
              "user": {
                "authenticated": true,
                "anonymous": true
              },
              "route": {
                "selected": "none",
                "query": {},
                "exact_u_r_l": ""
              }
            },
            "name": "categoriesTemplate",
            "props": {
              "item_count": {
                "type": "range",
                "value": 4
              },
              "full_width": {
                "type": "checkbox",
                "value": false
              }
            }
          }
        ],
        "page_key": "categories"
      },
      {
        "page_sections": [
          {
            "blocks": [],
            "predicate": {
              "screen": {
                "mobile": true,
                "desktop": true,
                "tablet": true
              },
              "user": {
                "authenticated": true,
                "anonymous": true
              },
              "route": {
                "selected": "none",
                "query": {},
                "exact_u_r_l": ""
              }
            },
            "name": "collectionTemplate",
            "props": {
              "heading": {
                "type": "text",
                "value": "Featured Collections"
              },
              "item_count": {
                "type": "range",
                "value": 4
              },
              "full_width": {
                "type": "checkbox",
                "value": false
              }
            }
          }
        ],
        "page_key": "collections"
      },
      {
        "page_sections": [],
        "page_key": "compare-products"
      },
      {
        "page_sections": [],
        "page_key": "product-listing"
      },
      {
        "page_sections": [],
        "page_key": "wishlist"
      },
      {
        "page_sections": [],
        "page_key": "tesr"
      }
    ],
    "application": "5e737afb97e0f586bf9d04db",
    "available_pages": [
      {
        "path": "product",
        "type": "system",
        "sections": [],
        "text": "Product Description",
        "value": "product-description"
      },
      {
        "path": "collection",
        "type": "system",
        "sections": [],
        "text": "Collection Listing",
        "value": "collection-listing"
      },
      {
        "path": "",
        "type": "system",
        "sections": [
          {
            "_id": "5feacca5bec2327927892853",
            "attributes": {
              "page": "home"
            }
          }
        ],
        "value": "home",
        "text": "Home"
      },
      {
        "path": "brands",
        "type": "system",
        "sections": [
          {
            "_id": "5feacca5bec2326422892854",
            "attributes": {
              "page": "brands"
            }
          }
        ],
        "value": "brands",
        "text": "Brands"
      },
      {
        "path": "cart/bag",
        "type": "system",
        "sections": [],
        "value": "cart-landing",
        "text": "Cart Landing"
      },
      {
        "path": "categories",
        "type": "system",
        "sections": [
          {
            "_id": "5feacca5bec232424c892855",
            "attributes": {
              "page": "categories"
            }
          }
        ],
        "value": "categories",
        "text": "Categories"
      },
      {
        "path": "collections",
        "type": "system",
        "sections": [
          {
            "_id": "5feacca5bec23281de892856",
            "attributes": {
              "page": "collections"
            }
          }
        ],
        "value": "collections",
        "text": "Collections"
      },
      {
        "path": "compare",
        "type": "system",
        "sections": [],
        "value": "compare-products",
        "text": "Compare Products"
      },
      {
        "path": "products",
        "type": "system",
        "sections": [],
        "value": "product-listing",
        "text": "Product Listing"
      },
      {
        "path": "wishlist",
        "type": "system",
        "sections": [],
        "value": "wishlist",
        "text": "Wishlist"
      },
      {
        "path": "sections/test",
        "type": "sections",
        "sections": [],
        "text": "test",
        "value": "test"
      }
    ],
    "styles": {},
    "created_at": "2020-12-22T05:09:04.720Z",
    "updated_at": "2021-01-24T11:22:41.376Z"
  }
}
```
</details>

</details>









---


#### getThemeForPreview
Get a theme for a preview




```swift
applicationClient.theme.getThemeForPreview(themeId: themeId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| themeId | String | yes | ID of the theme to be retrieved |  



A theme can be previewed before applying it. Use this API to retrieve the preview of a theme by its ID.

*Returned Response:*




[ThemesSchema](#ThemesSchema)

Success. Returns a JSON object of the theme. Check the example shown below or refer `ThemesSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Preview Theme</i></summary>

```json
{
  "value": {
    "information": {
      "images": {
        "desktop": [
          "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/pictures/free/original/artisan-desktop.png"
        ],
        "android": [
          "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/pictures/free/original/artisan-mobile.png"
        ],
        "ios": [
          "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/pictures/free/original/artisan-mobile.png"
        ],
        "thumbnail": [
          "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/pictures/free/original/artisan-desktop.png"
        ]
      },
      "features": [
        "Responsive"
      ],
      "name": "Akash-Artisan"
    },
    "src": {
      "link": "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/sources/J-1s-N-pl-archive.zip"
    },
    "assets": {
      "css": {
        "link": "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/assets/Ia4m885Mw2-themeBundle.css"
      },
      "umd_js": {
        "link": "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/assets/nEPGyc15g-themeBundle.umd.min.js"
      },
      "common_js": {
        "link": "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/assets/5f7tOB5rpq-themeBundle.common.js"
      }
    },
    "config": {
      "preset": {
        "sections": [
          {
            "page_sections": [
              {
                "blocks": [
                  {
                    "type": "gallery_image",
                    "name": "Image",
                    "props": {
                      "image": {
                        "type": "image_picker",
                        "value": "https://hdn-1.fynd.com/company/163/applications/5d5265c8f8ad9cae6dbf18f1/theme/pictures/free/original/theme-image-1601219133573.jpeg"
                      },
                      "slide_link": {
                        "type": "url",
                        "value": "https://www.turtleonline.in/collection/men-collection-vcahuo2q"
                      }
                    }
                  },
                  {
                    "type": "gallery_image",
                    "name": "Image",
                    "props": {
                      "image": {
                        "type": "image_picker",
                        "value": "https://hdn-1.fynd.com/company/163/applications/5d5265c8f8ad9cae6dbf18f1/theme/pictures/free/original/theme-image-1601219184350.jpeg"
                      },
                      "slide_link": {
                        "type": "url",
                        "value": "https://www.turtleonline.in/collection/shirts-5e9654ad"
                      }
                    }
                  }
                ],
                "predicate": {
                  "screen": {
                    "mobile": true,
                    "desktop": true,
                    "tablet": true
                  },
                  "user": {
                    "authenticated": true,
                    "anonymous": true
                  },
                  "route": {
                    "selected": "none",
                    "query": {},
                    "exact_u_r_l": ""
                  }
                },
                "name": "image-carousel",
                "props": {
                  "slide_height": {
                    "type": "select",
                    "value": "adapt"
                  },
                  "autoplay": {
                    "type": "checkbox",
                    "value": false
                  },
                  "slide_interval": {
                    "type": "range",
                    "value": 2
                  }
                }
              },
              {
                "blocks": [
                  {
                    "type": "collection",
                    "name": "Collection",
                    "props": {
                      "collection": {
                        "type": "collection",
                        "value": "accessories-7ee89654"
                      },
                      "title": {
                        "type": "text",
                        "value": "Turtle sports club"
                      },
                      "subtitle": {
                        "type": "text",
                        "value": "Casual Collections"
                      },
                      "overlay_image": {
                        "type": "image_picker",
                        "value": "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/pictures/free/original/casual_nfadbl.jpg"
                      }
                    }
                  },
                  {
                    "type": "collection",
                    "name": "Collection",
                    "props": {
                      "collection": {
                        "type": "collection",
                        "value": "bottom-wear-fb133293"
                      },
                      "title": {
                        "type": "text",
                        "value": "Formal Collection"
                      },
                      "subtitle": {
                        "type": "text",
                        "value": "Turtle Tailor Mark"
                      },
                      "overlay_image": {
                        "type": "image_picker",
                        "value": "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/pictures/free/original/tailors_nsrrfl.jpg"
                      }
                    }
                  },
                  {
                    "type": "collection",
                    "name": "Collection",
                    "props": {
                      "collection": {
                        "type": "collection",
                        "value": "bottom-wear-fb133293"
                      },
                      "title": {
                        "type": "text",
                        "value": "Bottomwear"
                      },
                      "subtitle": {
                        "type": "text",
                        "value": "Chinos | Trousers | Pants"
                      },
                      "overlay_image": {
                        "type": "image_picker",
                        "value": "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/pictures/free/original/bottomwear_tdkhn2.jpg"
                      }
                    }
                  },
                  {
                    "type": "collection",
                    "name": "Collection",
                    "props": {
                      "collection": {
                        "type": "collection",
                        "value": "t-shirt-7ee3cbcd"
                      },
                      "title": {
                        "type": "text",
                        "value": "Shirts"
                      },
                      "subtitle": {
                        "type": "text",
                        "value": "Casual"
                      },
                      "overlay_image": {
                        "type": "image_picker",
                        "value": "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/pictures/free/original/t-shirt_re9srk.jpg"
                      }
                    }
                  }
                ],
                "predicate": {
                  "screen": {
                    "mobile": true,
                    "desktop": true,
                    "tablet": true
                  },
                  "user": {
                    "authenticated": true,
                    "anonymous": true
                  },
                  "route": {
                    "selected": "none",
                    "query": {},
                    "exact_u_r_l": ""
                  }
                },
                "name": "collectionGrid",
                "props": {
                  "title": {
                    "type": "text",
                    "value": "Collections"
                  },
                  "subtitle": {
                    "type": "text",
                    "value": "Buy from our"
                  },
                  "full_width": {
                    "type": "checkbox",
                    "value": false
                  }
                }
              }
            ],
            "page_key": "home"
          },
          {
            "page_sections": [
              {
                "blocks": [],
                "predicate": {
                  "screen": {
                    "mobile": true,
                    "desktop": true,
                    "tablet": true
                  },
                  "user": {
                    "authenticated": true,
                    "anonymous": true
                  },
                  "route": {
                    "selected": "none",
                    "query": {},
                    "exact_u_r_l": ""
                  }
                },
                "name": "brandTemplate",
                "props": {
                  "item_count": {
                    "type": "range",
                    "value": 4
                  },
                  "full_width": {
                    "type": "checkbox",
                    "value": false
                  },
                  "heading": {
                    "type": "text",
                    "value": ""
                  },
                  "brand_type": {
                    "type": "radio",
                    "value": "all"
                  },
                  "layout": {
                    "type": "select",
                    "value": "grid"
                  },
                  "department": {
                    "type": "department",
                    "value": "others"
                  }
                }
              }
            ],
            "page_key": "brands"
          },
          {
            "page_sections": [],
            "page_key": "cart-landing"
          },
          {
            "page_sections": [
              {
                "blocks": [],
                "predicate": {
                  "screen": {
                    "mobile": true,
                    "desktop": true,
                    "tablet": true
                  },
                  "user": {
                    "authenticated": true,
                    "anonymous": true
                  },
                  "route": {
                    "selected": "none",
                    "query": {},
                    "exact_u_r_l": ""
                  }
                },
                "name": "categoriesTemplate",
                "props": {
                  "item_count": {
                    "type": "range",
                    "value": 4
                  },
                  "full_width": {
                    "type": "checkbox",
                    "value": false
                  },
                  "heading": {
                    "type": "text",
                    "value": ""
                  },
                  "layout": {
                    "type": "select",
                    "value": "grid"
                  },
                  "view_all": {
                    "type": "checkbox",
                    "value": false
                  }
                }
              }
            ],
            "page_key": "categories"
          },
          {
            "page_sections": [
              {
                "blocks": [],
                "predicate": {
                  "screen": {
                    "mobile": true,
                    "desktop": true,
                    "tablet": true
                  },
                  "user": {
                    "authenticated": true,
                    "anonymous": true
                  },
                  "route": {
                    "selected": "none",
                    "query": {},
                    "exact_u_r_l": ""
                  }
                },
                "name": "collectionTemplate",
                "props": {
                  "heading": {
                    "type": "text",
                    "value": "Featured Collections"
                  },
                  "item_count": {
                    "type": "range",
                    "value": 4
                  },
                  "full_width": {
                    "type": "checkbox",
                    "value": false
                  },
                  "layout": {
                    "type": "select",
                    "value": "grid"
                  }
                }
              }
            ],
            "page_key": "collections"
          },
          {
            "page_sections": [],
            "page_key": "compare-products"
          },
          {
            "page_sections": [],
            "page_key": "product-description"
          },
          {
            "page_sections": [],
            "page_key": "product-listing"
          },
          {
            "page_sections": [],
            "page_key": "wishlist"
          }
        ]
      },
      "global_schema": {
        "props": [
          {
            "type": "color",
            "id": "header_bg_color",
            "default": "#ffffff",
            "category": "Header",
            "label": "Header background Color"
          },
          {
            "type": "color",
            "id": "footer_bg_color",
            "default": "#1b1b1b",
            "category": "Footer",
            "label": "Footer background Color"
          },
          {
            "type": "text",
            "id": "footer_text",
            "default": "",
            "category": "Footer",
            "label": "Footer Text"
          },
          {
            "type": "checkbox",
            "id": "disable_cart",
            "default": false,
            "category": "Cart",
            "label": "Disable Cart"
          }
        ]
      },
      "current": "default",
      "page_schema": [
        {
          "props": [],
          "_id": "5fe182f763d26dadc8d205c6",
          "page": "blog"
        },
        {
          "props": [],
          "_id": "5fe182f763d26d0a36d205c7",
          "page": "brands"
        },
        {
          "props": [
            {
              "type": "checkbox",
              "id": "gst",
              "label": "GST",
              "default": true,
              "info": "Show GST on cart"
            },
            {
              "type": "checkbox",
              "id": "staff_selection",
              "label": "Staff Selection",
              "default": true,
              "info": "Show Staff selection on Cart"
            },
            {
              "type": "checkbox",
              "id": "enable_customer",
              "label": "Customer",
              "default": true,
              "info": "Placing on behalf of customer"
            },
            {
              "type": "checkbox",
              "id": "enable_guest",
              "label": "Enable Guest Checkout",
              "default": true,
              "info": "Enable Continue as Guest"
            }
          ],
          "_id": "5fe182f763d26d81c5d205c8",
          "page": "cart-landing"
        },
        {
          "props": [],
          "_id": "5fe182f763d26d7e15d205c9",
          "page": "cart-review"
        },
        {
          "props": [],
          "_id": "5fe182f763d26d270ed205ca",
          "page": "categories"
        },
        {
          "props": [],
          "_id": "5fe182f763d26d9b4fd205cb",
          "page": "collection-listing"
        },
        {
          "props": [],
          "_id": "5fe182f763d26da6ecd205cc",
          "page": "collections"
        },
        {
          "props": [],
          "_id": "5fe182f763d26d7156d205cd",
          "page": "compare-products"
        },
        {
          "props": [],
          "_id": "5fe182f763d26d62bad205ce",
          "page": "home"
        },
        {
          "props": [],
          "_id": "5fe182f763d26d5afcd205cf",
          "page": "order-review"
        },
        {
          "props": [],
          "_id": "5fe182f763d26def8dd205d0",
          "page": "order-tracking-details"
        },
        {
          "props": [],
          "_id": "5fe182f763d26d381fd205d1",
          "page": "order-tracking"
        },
        {
          "props": [
            {
              "type": "text",
              "id": "shipping_link",
              "label": "Shipping Link",
              "default": "https://fynd.freshdesk.com/support/solutions/folders/33000111600",
              "info": "Link of shipping page"
            },
            {
              "type": "checkbox",
              "id": "original_image",
              "label": "Use original Image",
              "default": false,
              "info": "Use original product image."
            },
            {
              "type": "checkbox",
              "id": "wishlist",
              "label": "Wishlist",
              "default": true,
              "info": "Show Wishlist for product"
            },
            {
              "type": "checkbox",
              "id": "reviews",
              "label": "Review",
              "default": true,
              "info": "Show Reviews of product"
            },
            {
              "type": "checkbox",
              "id": "add_to_compare",
              "label": "Add to Compare",
              "default": true,
              "info": "Allow comparison of products"
            },
            {
              "type": "checkbox",
              "id": "size_guide",
              "label": "Size Guide",
              "default": true,
              "info": "Show Size Guide"
            },
            {
              "type": "checkbox",
              "id": "product_request",
              "label": "Product Request",
              "default": true,
              "info": "Show Product Request"
            },
            {
              "type": "checkbox",
              "id": "share",
              "label": "Share",
              "default": true,
              "info": "Enable Sharing product"
            },
            {
              "type": "checkbox",
              "id": "sold_by",
              "label": "Show Sold By",
              "default": true,
              "info": "Show name of the store"
            },
            {
              "type": "checkbox",
              "id": "store_selection",
              "label": "Seller Store Selection",
              "default": true,
              "info": "Allow to explicitly select stores"
            },
            {
              "type": "checkbox",
              "id": "compare_products",
              "label": "Compare Products",
              "default": true,
              "info": "Show Most Compared Products"
            },
            {
              "type": "checkbox",
              "id": "variants",
              "label": "Product Variants",
              "default": true,
              "info": "Show Product Variants"
            },
            {
              "type": "checkbox",
              "id": "ratings",
              "label": "Product Rating",
              "default": true,
              "info": "Show Product Ratings"
            },
            {
              "type": "checkbox",
              "id": "similar_products",
              "label": "Similar Products",
              "default": true,
              "info": "Show Similar Products"
            },
            {
              "type": "checkbox",
              "id": "bulk_prices",
              "label": "Bulk Prices",
              "default": true,
              "info": "Show Bulk Prices"
            },
            {
              "type": "checkbox",
              "id": "showDeliveryInfo",
              "label": "Delivery Info",
              "default": true,
              "info": "Show Delivery Date"
            }
          ],
          "_id": "5fe182f763d26d29bbd205d2",
          "page": "product-description"
        },
        {
          "props": [],
          "_id": "5fe182f763d26da5f0d205d3",
          "page": "product-listing"
        },
        {
          "props": [],
          "_id": "5fe182f763d26d4e2dd205d5",
          "page": "wishlist"
        },
        {
          "props": [
            {
              "default": true,
              "id": "header",
              "label": "Header",
              "type": "checkbox"
            },
            {
              "default": true,
              "id": "footer",
              "label": "Footer",
              "type": "checkbox"
            }
          ],
          "_id": "5fe7166cbaae343115de8555",
          "page": "tesr"
        }
      ],
      "list": [
        {
          "name": "default",
          "global_config": {
            "static": {
              "props": {
                "colors": {
                  "primary_color": "#7043f7",
                  "secondary_color": "#02d1cb",
                  "accent_color": "#FFFFFF",
                  "link_color": "#7043f7",
                  "button_secondary_color": "#000000",
                  "bg_color": "#F8F8F8"
                }
              }
            },
            "custom": {
              "props": {
                "disable_cart": false
              }
            }
          },
          "page": [
            {
              "settings": {
                "props": {
                  "show_info_message": true
                }
              },
              "page": "cart-landing"
            }
          ],
          "_id": "5fc4bb9078e957737e7d79a3"
        }
      ]
    },
    "colors": {
      "primary_color": "#41434C",
      "secondary_color": "#41434C",
      "accent_color": "#FFFFFF",
      "link_color": "#33B1C0",
      "button_secondary_color": "#000000",
      "bg_color": "#F8F8F8"
    },
    "font": {
      "variants": {
        "light": {
          "name": "300",
          "file": ""
        },
        "regular": {
          "name": "regular",
          "file": "https://fonts.gstatic.com/s/judson/v13/FeVRS0Fbvbc14VxRD7N01bV7kg.ttf"
        },
        "medium": {
          "name": "500",
          "file": ""
        },
        "semi_bold": {
          "name": "600",
          "file": ""
        },
        "bold": {
          "name": "700",
          "file": "https://fonts.gstatic.com/s/judson/v13/FeVSS0Fbvbc14Vxps5xQ3Z5nm29Gww.ttf"
        }
      },
      "family": "Judson"
    },
    "applied": true,
    "published": false,
    "archived": false,
    "customized": true,
    "version": "1.1.19",
    "tags": [],
    "_id": "5fe17f7063d26dc54fd202b4",
    "pages": {
      "home": {
        "path": "",
        "type": "system",
        "sections": [],
        "value": "home",
        "text": "Home"
      },
      "brands": {
        "path": "brands",
        "type": "system",
        "sections": [],
        "value": "brands",
        "text": "Brands"
      },
      "cart-landing": {
        "path": "cart/bag",
        "type": "system",
        "sections": [],
        "value": "cart-landing",
        "text": "Cart Landing"
      },
      "categories": {
        "path": "categories",
        "type": "system",
        "sections": [],
        "value": "categories",
        "text": "Categories"
      },
      "collections": {
        "path": "collections",
        "type": "system",
        "sections": [],
        "value": "collections",
        "text": "Collections"
      },
      "compare-products": {
        "path": "compare",
        "type": "system",
        "sections": [],
        "value": "compare-products",
        "text": "Compare Products"
      },
      "product-description": {
        "path": "product",
        "type": "system",
        "sections": [],
        "value": "product-description",
        "text": "Product Description"
      },
      "product-listing": {
        "path": "products",
        "type": "system",
        "sections": [],
        "value": "product-listing",
        "text": "Product Listing"
      },
      "collection-listing": {
        "path": "collection",
        "type": "system",
        "sections": [],
        "value": "collection-listing",
        "text": "COllection Listing"
      },
      "wishlist": {
        "path": "wishlist",
        "type": "system",
        "sections": [],
        "value": "wishlist",
        "text": "Wishlist"
      }
    },
    "available_sections": [
      {
        "props": [
          {
            "type": "text",
            "id": "heading",
            "default": "Brands",
            "label": "Brands Heading"
          },
          {
            "type": "radio",
            "id": "brand_type",
            "default": "all",
            "options": [
              {
                "value": "all",
                "text": "All"
              },
              {
                "value": "department",
                "text": "Department"
              },
              {
                "value": "handpicked",
                "text": "Handpicked"
              }
            ]
          },
          {
            "type": "department",
            "id": "department",
            "label": "Department",
            "info": "Select a department of brands",
            "note": "Department only applies if 'department' type is selected"
          },
          {
            "type": "range",
            "id": "item_count",
            "min": 3,
            "max": 5,
            "step": 1,
            "unit": "",
            "label": "Items per row",
            "default": 4,
            "info": "Maximum items allowed per row"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          },
          {
            "id": "layout",
            "type": "select",
            "options": [
              {
                "value": "grid",
                "text": "Grid View"
              },
              {
                "value": "horizontal",
                "text": "Horizontal View"
              }
            ],
            "default": "grid",
            "label": "Layout",
            "info": "Alignment of content"
          },
          {
            "type": "checkbox",
            "id": "view_all",
            "default": false,
            "label": "Show View All"
          }
        ],
        "blocks": [
          {
            "type": "brand-item",
            "name": "Brand Item",
            "props": [
              {
                "type": "brand",
                "id": "brand",
                "label": "Select Brand"
              }
            ]
          }
        ],
        "_id": "5feacca5bec232d59b89283a",
        "name": "brandTemplate",
        "label": "Brands List Page"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "heading",
            "default": "Categories",
            "label": "Categories Heading"
          },
          {
            "id": "layout",
            "type": "select",
            "options": [
              {
                "value": "grid",
                "text": "Grid View"
              },
              {
                "value": "horizontal",
                "text": "Horizontal View"
              }
            ],
            "default": "grid",
            "label": "Layout",
            "info": "Alignment of content"
          },
          {
            "type": "range",
            "id": "item_count",
            "min": 3,
            "max": 5,
            "step": 1,
            "unit": "",
            "label": "Items per row",
            "default": 4,
            "info": "Maximum items allowed per row"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          },
          {
            "type": "checkbox",
            "id": "view_all",
            "default": false,
            "label": "Show View All",
            "info": "Check to show View All Button"
          }
        ],
        "blocks": [],
        "_id": "5feacca5bec232404189283b",
        "name": "categoriesTemplate",
        "label": "Categories Page"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "title",
            "default": "",
            "label": "Title"
          },
          {
            "type": "text",
            "id": "subtitle",
            "default": "",
            "label": "Subtitle"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          }
        ],
        "blocks": [
          {
            "type": "collection",
            "name": "Collection",
            "props": [
              {
                "type": "collection",
                "id": "collection",
                "label": "Select a collection"
              },
              {
                "type": "image_picker",
                "id": "overlayImage",
                "default": "",
                "label": "Background image",
                "info": "Background Image"
              },
              {
                "type": "text",
                "id": "title",
                "default": "",
                "label": "Overlay title"
              },
              {
                "type": "text",
                "id": "subtitle",
                "default": "",
                "label": "Overlay subtitle"
              }
            ]
          }
        ],
        "_id": "5feacca5bec2321fd589283c",
        "name": "collectionGrid",
        "label": "Collection Grid"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "heading",
            "default": "Collection List",
            "label": "Collection Heading",
            "info": "Collection Heading"
          },
          {
            "type": "range",
            "id": "item_count",
            "min": 3,
            "max": 5,
            "step": 1,
            "unit": "",
            "label": "Collections per row",
            "default": 2,
            "info": "Maximum items allowed per row"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          }
        ],
        "blocks": [
          {
            "type": "collection",
            "name": "Collection",
            "props": [
              {
                "type": "collection",
                "id": "collection",
                "label": "Select a collection"
              }
            ]
          }
        ],
        "_id": "5feacca5bec2323bf689283d",
        "name": "collectionList",
        "label": "Collection List"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "heading",
            "default": "Collections",
            "label": "Collection Heading"
          },
          {
            "type": "range",
            "id": "item_count",
            "min": 3,
            "max": 5,
            "step": 1,
            "unit": "",
            "label": "Collections per row",
            "default": 4,
            "info": "Maximum items allowed per row"
          },
          {
            "type": "radio",
            "id": "collection_type",
            "default": "all",
            "options": [
              {
                "value": "all",
                "text": "All"
              },
              {
                "value": "handpicked",
                "text": "Handpicked"
              }
            ]
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          },
          {
            "id": "layout",
            "type": "select",
            "options": [
              {
                "value": "grid",
                "text": "Grid View"
              },
              {
                "value": "horizontal",
                "text": "Horizontal View"
              }
            ],
            "default": "grid",
            "label": "Layout",
            "info": "Alignment of content"
          },
          {
            "type": "checkbox",
            "id": "view_all",
            "default": false,
            "label": "Show View All"
          }
        ],
        "blocks": [
          {
            "type": "collection-item",
            "name": "Collection Item",
            "props": [
              {
                "type": "collection",
                "id": "collection",
                "label": "Select collection"
              }
            ]
          }
        ],
        "_id": "5feacca5bec23263b489283e",
        "name": "collectionTemplate",
        "label": "Collection List Page"
      },
      {
        "props": [
          {
            "type": "code",
            "id": "code",
            "label": "Custom HTML",
            "info": "Add Your custom HTML Code below. You can also use the full screen icon to open a code editor and add your code"
          }
        ],
        "blocks": [],
        "_id": "5feacca5bec232409489283f",
        "name": "customHtml",
        "label": "Custom HTML"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "heading",
            "default": "Featured Products",
            "label": "Section Heading"
          },
          {
            "type": "range",
            "id": "item_count",
            "min": 3,
            "max": 5,
            "step": 1,
            "unit": "",
            "label": "Products per row",
            "default": 4,
            "info": "Maximum items allowed per row"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          }
        ],
        "blocks": [
          {
            "type": "product",
            "name": "Product",
            "props": [
              {
                "type": "product",
                "id": "product",
                "label": "Select a Product",
                "info": "Product Item to be displayed"
              }
            ]
          }
        ],
        "_id": "5feacca5bec2326213892840",
        "name": "featuredProducts",
        "label": "Featured Products",
        "preset": {
          "blocks": [
            {
              "name": "Product"
            },
            {
              "name": "Product"
            },
            {
              "name": "Product"
            },
            {
              "name": "Product"
            }
          ]
        }
      },
      {
        "props": [
          {
            "type": "range",
            "id": "item_count",
            "min": 1,
            "max": 4,
            "step": 1,
            "unit": "",
            "label": "No of items",
            "default": 4,
            "info": "Maximum items allowed per row"
          }
        ],
        "blocks": [
          {
            "type": "gallery_image",
            "name": "Image",
            "props": [
              {
                "type": "image_picker",
                "id": "image",
                "label": "Gallery Image",
                "default": "https://hdn-1.fynd.com/company/163/applications/5d5265c8f8ad9cae6dbf18f1/theme/pictures/free/original/theme-image-1603773049684.svg"
              },
              {
                "type": "text",
                "id": "caption",
                "label": "Image Caption",
                "default": ""
              },
              {
                "type": "url",
                "id": "link",
                "label": "Link",
                "default": "",
                "info": "Link to redirect"
              }
            ]
          }
        ],
        "_id": "5feacca5bec2321047892841",
        "name": "gallery",
        "label": "Gallery",
        "preset": {
          "props": {
            "item_count": 4
          },
          "blocks": [
            {
              "name": "Image"
            },
            {
              "name": "Image"
            },
            {
              "name": "Image"
            },
            {
              "name": "Image"
            }
          ]
        }
      },
      {
        "props": [
          {
            "type": "url",
            "id": "ctaLink",
            "default": "",
            "label": "Redirect Link"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          }
        ],
        "blocks": [],
        "_id": "5feacca5bec232b085892842",
        "name": "heroBanner",
        "label": "Hero Banner"
      },
      {
        "props": [
          {
            "id": "image",
            "type": "image_picker",
            "label": "Hero Image",
            "default": ""
          },
          {
            "type": "text",
            "id": "heading",
            "default": "",
            "label": "Heading"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          },
          {
            "id": "overlayLayout",
            "type": "select",
            "options": [
              {
                "value": "left",
                "text": "Align Left"
              },
              {
                "value": "center",
                "text": "Align Center"
              },
              {
                "value": "right",
                "text": "Align Right"
              }
            ],
            "default": "left",
            "label": "Overlay Layout",
            "info": "Alignment of overlay content"
          },
          {
            "type": "image_picker",
            "id": "overlayImage",
            "default": "",
            "label": "Overlay image",
            "info": "Overlay Image"
          },
          {
            "type": "text",
            "id": "text",
            "default": "",
            "label": "Overlay Text"
          },
          {
            "type": "color",
            "id": "text_color",
            "default": "#000",
            "label": "Text Color"
          },
          {
            "type": "url",
            "id": "ctaLink",
            "default": "",
            "label": "Redirect Link"
          },
          {
            "type": "text",
            "id": "ctaText",
            "default": "Shop Now",
            "label": "Button Text"
          }
        ],
        "blocks": [],
        "_id": "5feacca5bec2321e74892843",
        "name": "imageBanner",
        "label": "Hero Image"
      },
      {
        "props": [
          {
            "id": "videoUrl",
            "type": "url",
            "label": "Video URL",
            "default": ""
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          },
          {
            "id": "coverUrl",
            "type": "image_picker",
            "label": "Video Cover Image URL",
            "default": ""
          },
          {
            "type": "checkbox",
            "id": "showcontrols",
            "default": false,
            "label": "Show Controls on Video",
            "info": "Check to show controls on video"
          },
          {
            "type": "select",
            "id": "size",
            "options": [
              {
                "value": "adapt",
                "text": "Adapt"
              },
              {
                "value": "small",
                "text": "Small"
              },
              {
                "value": "medium",
                "text": "Medium"
              },
              {
                "value": "large",
                "text": "Large"
              }
            ],
            "default": "adapt",
            "label": "Video Height",
            "info": "Height of Video"
          },
          {
            "type": "text",
            "id": "heading",
            "default": "",
            "label": "Heading"
          },
          {
            "type": "color",
            "id": "heading_color",
            "default": "#000",
            "label": "Headin Text Color"
          },
          {
            "type": "text",
            "id": "subHeading",
            "default": "",
            "label": "Sub-heading"
          },
          {
            "type": "color",
            "id": "subheading_color",
            "default": "#000",
            "label": "Subheading Text Color"
          },
          {
            "type": "url",
            "id": "ctaLink",
            "default": "",
            "label": "Redirect Link"
          },
          {
            "type": "text",
            "id": "ctaText",
            "default": "ShopNow",
            "label": "Button Text"
          }
        ],
        "blocks": [],
        "_id": "5feacca5bec232bfc8892844",
        "name": "videoBanner",
        "label": "Hero Video"
      },
      {
        "props": [
          {
            "type": "select",
            "id": "slide_height",
            "options": [
              {
                "value": "adapt",
                "text": "Adapt to first image"
              },
              {
                "value": "small",
                "text": "Small"
              },
              {
                "value": "medium",
                "text": "Medium"
              },
              {
                "value": "large",
                "text": "Large"
              }
            ],
            "default": "adapt",
            "label": "Slide height",
            "info": "Size of the slide"
          },
          {
            "type": "checkbox",
            "id": "autoplay",
            "default": false,
            "label": "AutoPlay Slides",
            "info": "Check to autoplay slides"
          },
          {
            "type": "range",
            "id": "slide_interval",
            "min": 1,
            "max": 10,
            "step": 1,
            "unit": "sec",
            "label": "Change slides after every",
            "default": 2,
            "info": "Autoplay slide duration"
          }
        ],
        "blocks": [
          {
            "type": "gallery_image",
            "name": "Image",
            "props": [
              {
                "type": "image_picker",
                "id": "image",
                "label": "Gallery Image"
              },
              {
                "type": "url",
                "id": "slide_link",
                "label": "Slide Link"
              }
            ]
          }
        ],
        "_id": "5feacca5bec232a916892845",
        "name": "image-carousel",
        "label": "Image Carousel",
        "preset": {
          "blocks": [
            {
              "name": "Image"
            },
            {
              "name": "Image"
            }
          ]
        }
      },
      {
        "props": [
          {
            "type": "text",
            "id": "heading",
            "default": "Featured Collections",
            "label": "Collection Heading"
          },
          {
            "type": "range",
            "id": "item_count",
            "min": 2,
            "max": 5,
            "step": 1,
            "unit": "",
            "label": "Products per row",
            "default": 2,
            "info": "Maximum items allowed per row"
          },
          {
            "type": "collection",
            "id": "collection",
            "label": "Collection",
            "info": "Select a collection to display its products"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          }
        ],
        "blocks": [],
        "_id": "5feacca5bec23258ec892846",
        "name": "productList",
        "label": "Product List",
        "preset": {
          "props": {
            "heading": "Featured Products",
            "item_count": 4,
            "collection": ""
          }
        }
      },
      {
        "props": [
          {
            "type": "checkbox",
            "id": "autoplay",
            "default": false,
            "label": "AutoPlay Slides"
          },
          {
            "type": "range",
            "id": "slide_interval",
            "min": 1,
            "max": 10,
            "step": 1,
            "unit": "sec",
            "label": "Change slides every",
            "default": 2
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          }
        ],
        "blocks": [
          {
            "type": "testimonial",
            "name": "Testimonial",
            "props": [
              {
                "type": "textarea",
                "id": "testimonialText",
                "label": "Text for Testimonial",
                "default": "",
                "info": "Text for testimonial",
                "placeholder": "Text"
              },
              {
                "type": "text",
                "id": "author",
                "label": "Customers name"
              }
            ]
          }
        ],
        "_id": "5feacca5bec23299e8892847",
        "name": "testimonials",
        "label": "Testimonial"
      },
      {
        "props": [
          {
            "type": "select",
            "id": "slide_height",
            "options": [
              {
                "value": "adapt",
                "text": "Adapt to first video"
              },
              {
                "value": "small",
                "text": "Small"
              },
              {
                "value": "medium",
                "text": "Medium"
              },
              {
                "value": "large",
                "text": "Large"
              }
            ],
            "default": "adapt",
            "label": "Slide height",
            "info": "Size of the slide"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          },
          {
            "type": "checkbox",
            "id": "autoplay",
            "default": false,
            "label": "AutoPlay Slides",
            "info": "Check to autoplay slides"
          },
          {
            "type": "range",
            "id": "slide_interval",
            "min": 1,
            "max": 10,
            "step": 1,
            "unit": "sec",
            "label": "Change slides every",
            "default": 2,
            "info": "Autoplay slide duration"
          }
        ],
        "blocks": [
          {
            "type": "video_item",
            "name": "Video Slide",
            "props": [
              {
                "id": "videoUrl",
                "type": "url",
                "label": "Video URL",
                "default": ""
              },
              {
                "type": "checkbox",
                "id": "showcontrols",
                "default": false,
                "label": "Show Controls on Video",
                "info": "Check to show controls on video"
              }
            ]
          }
        ],
        "_id": "5feacca5bec232d89b892848",
        "name": "videoCarousel",
        "label": "Video Carousel"
      }
    ],
    "sections": [
      {
        "page_sections": [
          {
            "blocks": [],
            "predicate": {
              "screen": {
                "mobile": true,
                "desktop": true,
                "tablet": true
              },
              "user": {
                "authenticated": true,
                "anonymous": true
              },
              "route": {
                "selected": "none",
                "query": {},
                "exact_u_r_l": ""
              }
            },
            "name": "brandTemplate",
            "props": {
              "title": {
                "type": "text",
                "value": "Brands"
              },
              "item_count": {
                "type": "range",
                "value": 4
              },
              "full_width": {
                "type": "checkbox",
                "value": false
              },
              "heading": {
                "type": "text",
                "value": "Brands"
              },
              "brand_type": {
                "type": "radio",
                "value": "all"
              },
              "department": {
                "type": "department",
                "value": null
              },
              "layout": {
                "type": "select",
                "value": "grid"
              },
              "view_all": {
                "type": "checkbox",
                "value": null
              }
            }
          }
        ],
        "page_key": "product-description"
      },
      {
        "page_sections": [],
        "page_key": "collection-listing"
      },
      {
        "page_sections": [
          {
            "blocks": [
              {
                "type": "brand-item",
                "name": "Brand Item",
                "props": {
                  "brand": {
                    "type": "brand",
                    "value": {
                      "display": "Apple",
                      "id": "apple"
                    }
                  }
                }
              },
              {
                "type": "brand-item",
                "name": "Brand Item",
                "props": {
                  "brand": {
                    "type": "brand",
                    "value": {
                      "display": "Gionee",
                      "id": "gionee"
                    }
                  }
                }
              }
            ],
            "predicate": {
              "screen": {
                "mobile": true,
                "desktop": true,
                "tablet": true
              },
              "user": {
                "authenticated": true,
                "anonymous": true
              },
              "route": {
                "selected": "none",
                "query": {},
                "exact_u_r_l": ""
              }
            },
            "name": "brandTemplate",
            "props": {
              "heading": {
                "type": "text",
                "value": "Brandss"
              },
              "brand_type": {
                "type": "radio",
                "value": "handpicked"
              },
              "department": {
                "type": "department"
              },
              "item_count": {
                "value": 4,
                "type": "range"
              },
              "full_width": {
                "value": false,
                "type": "checkbox"
              },
              "layout": {
                "type": "select",
                "value": "grid"
              },
              "view_all": {
                "value": false,
                "type": "checkbox"
              }
            }
          }
        ],
        "page_key": "home"
      },
      {
        "page_sections": [
          {
            "blocks": [],
            "predicate": {
              "screen": {
                "mobile": true,
                "desktop": true,
                "tablet": true
              },
              "user": {
                "authenticated": true,
                "anonymous": true
              },
              "route": {
                "selected": "none",
                "query": {},
                "exact_u_r_l": ""
              }
            },
            "name": "brandTemplate",
            "props": {
              "title": {
                "type": "text",
                "value": "Brands"
              },
              "item_count": {
                "type": "range",
                "value": 4
              },
              "full_width": {
                "type": "checkbox",
                "value": false
              }
            }
          }
        ],
        "page_key": "brands"
      },
      {
        "page_sections": [],
        "page_key": "cart-landing"
      },
      {
        "page_sections": [
          {
            "blocks": [],
            "predicate": {
              "screen": {
                "mobile": true,
                "desktop": true,
                "tablet": true
              },
              "user": {
                "authenticated": true,
                "anonymous": true
              },
              "route": {
                "selected": "none",
                "query": {},
                "exact_u_r_l": ""
              }
            },
            "name": "categoriesTemplate",
            "props": {
              "item_count": {
                "type": "range",
                "value": 4
              },
              "full_width": {
                "type": "checkbox",
                "value": false
              }
            }
          }
        ],
        "page_key": "categories"
      },
      {
        "page_sections": [
          {
            "blocks": [],
            "predicate": {
              "screen": {
                "mobile": true,
                "desktop": true,
                "tablet": true
              },
              "user": {
                "authenticated": true,
                "anonymous": true
              },
              "route": {
                "selected": "none",
                "query": {},
                "exact_u_r_l": ""
              }
            },
            "name": "collectionTemplate",
            "props": {
              "heading": {
                "type": "text",
                "value": "Featured Collections"
              },
              "item_count": {
                "type": "range",
                "value": 4
              },
              "full_width": {
                "type": "checkbox",
                "value": false
              }
            }
          }
        ],
        "page_key": "collections"
      },
      {
        "page_sections": [],
        "page_key": "compare-products"
      },
      {
        "page_sections": [],
        "page_key": "product-listing"
      },
      {
        "page_sections": [],
        "page_key": "wishlist"
      },
      {
        "page_sections": [],
        "page_key": "tesr"
      }
    ],
    "application": "5e737afb97e0f586bf9d04db",
    "available_pages": [
      {
        "path": "product",
        "type": "system",
        "sections": [],
        "text": "Product Description",
        "value": "product-description"
      },
      {
        "path": "collection",
        "type": "system",
        "sections": [],
        "text": "Collection Listing",
        "value": "collection-listing"
      },
      {
        "path": "",
        "type": "system",
        "sections": [
          {
            "_id": "5feacca5bec2327927892853",
            "attributes": {
              "page": "home"
            }
          }
        ],
        "value": "home",
        "text": "Home"
      },
      {
        "path": "brands",
        "type": "system",
        "sections": [
          {
            "_id": "5feacca5bec2326422892854",
            "attributes": {
              "page": "brands"
            }
          }
        ],
        "value": "brands",
        "text": "Brands"
      },
      {
        "path": "cart/bag",
        "type": "system",
        "sections": [],
        "value": "cart-landing",
        "text": "Cart Landing"
      },
      {
        "path": "categories",
        "type": "system",
        "sections": [
          {
            "_id": "5feacca5bec232424c892855",
            "attributes": {
              "page": "categories"
            }
          }
        ],
        "value": "categories",
        "text": "Categories"
      },
      {
        "path": "collections",
        "type": "system",
        "sections": [
          {
            "_id": "5feacca5bec23281de892856",
            "attributes": {
              "page": "collections"
            }
          }
        ],
        "value": "collections",
        "text": "Collections"
      },
      {
        "path": "compare",
        "type": "system",
        "sections": [],
        "value": "compare-products",
        "text": "Compare Products"
      },
      {
        "path": "products",
        "type": "system",
        "sections": [],
        "value": "product-listing",
        "text": "Product Listing"
      },
      {
        "path": "wishlist",
        "type": "system",
        "sections": [],
        "value": "wishlist",
        "text": "Wishlist"
      },
      {
        "path": "sections/test",
        "type": "sections",
        "sections": [],
        "text": "test",
        "value": "test"
      }
    ],
    "styles": {},
    "created_at": "2020-12-22T05:09:04.720Z",
    "updated_at": "2021-01-24T11:22:41.376Z"
  }
}
```
</details>

</details>









---


#### getAppliedThemeV2
Get the theme currently applied to an application




```swift
applicationClient.theme.getAppliedThemeV2() { (response, error) in
    // Use response
}
```






An application has multiple themes, but only one theme can be applied at a time. Use this API to retrieve the theme currently applied to the application.

*Returned Response:*




[ThemesSchema](#ThemesSchema)

Success. Returns a JSON object of the theme. Check the example shown below or    refer `ThemesSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Applied Theme</i></summary>

```json
{
  "value": {
    "information": {
      "images": {
        "desktop": [
          "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/pictures/free/original/artisan-desktop.png"
        ],
        "android": [
          "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/pictures/free/original/artisan-mobile.png"
        ],
        "ios": [
          "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/pictures/free/original/artisan-mobile.png"
        ],
        "thumbnail": [
          "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/pictures/free/original/artisan-desktop.png"
        ]
      },
      "features": [
        "Responsive"
      ],
      "name": "Akash-Artisan"
    },
    "src": {
      "link": "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/sources/J-1s-N-pl-archive.zip"
    },
    "assets": {
      "css": {
        "link": "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/assets/Ia4m885Mw2-themeBundle.css"
      },
      "umd_js": {
        "link": "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/assets/nEPGyc15g-themeBundle.umd.min.js"
      },
      "common_js": {
        "link": "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/assets/5f7tOB5rpq-themeBundle.common.js"
      }
    },
    "config": {
      "preset": {
        "sections": [
          {
            "page_sections": [
              {
                "blocks": [
                  {
                    "type": "gallery_image",
                    "name": "Image",
                    "props": {
                      "image": {
                        "type": "image_picker",
                        "value": "https://hdn-1.fynd.com/company/163/applications/5d5265c8f8ad9cae6dbf18f1/theme/pictures/free/original/theme-image-1601219133573.jpeg"
                      },
                      "slide_link": {
                        "type": "url",
                        "value": "https://www.turtleonline.in/collection/men-collection-vcahuo2q"
                      }
                    }
                  },
                  {
                    "type": "gallery_image",
                    "name": "Image",
                    "props": {
                      "image": {
                        "type": "image_picker",
                        "value": "https://hdn-1.fynd.com/company/163/applications/5d5265c8f8ad9cae6dbf18f1/theme/pictures/free/original/theme-image-1601219184350.jpeg"
                      },
                      "slide_link": {
                        "type": "url",
                        "value": "https://www.turtleonline.in/collection/shirts-5e9654ad"
                      }
                    }
                  }
                ],
                "predicate": {
                  "screen": {
                    "mobile": true,
                    "desktop": true,
                    "tablet": true
                  },
                  "user": {
                    "authenticated": true,
                    "anonymous": true
                  },
                  "route": {
                    "selected": "none",
                    "query": {},
                    "exact_u_r_l": ""
                  }
                },
                "name": "image-carousel",
                "props": {
                  "slide_height": {
                    "type": "select",
                    "value": "adapt"
                  },
                  "autoplay": {
                    "type": "checkbox",
                    "value": false
                  },
                  "slide_interval": {
                    "type": "range",
                    "value": 2
                  }
                }
              },
              {
                "blocks": [
                  {
                    "type": "collection",
                    "name": "Collection",
                    "props": {
                      "collection": {
                        "type": "collection",
                        "value": "accessories-7ee89654"
                      },
                      "title": {
                        "type": "text",
                        "value": "Turtle sports club"
                      },
                      "subtitle": {
                        "type": "text",
                        "value": "Casual Collections"
                      },
                      "overlay_image": {
                        "type": "image_picker",
                        "value": "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/pictures/free/original/casual_nfadbl.jpg"
                      }
                    }
                  },
                  {
                    "type": "collection",
                    "name": "Collection",
                    "props": {
                      "collection": {
                        "type": "collection",
                        "value": "bottom-wear-fb133293"
                      },
                      "title": {
                        "type": "text",
                        "value": "Formal Collection"
                      },
                      "subtitle": {
                        "type": "text",
                        "value": "Turtle Tailor Mark"
                      },
                      "overlay_image": {
                        "type": "image_picker",
                        "value": "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/pictures/free/original/tailors_nsrrfl.jpg"
                      }
                    }
                  },
                  {
                    "type": "collection",
                    "name": "Collection",
                    "props": {
                      "collection": {
                        "type": "collection",
                        "value": "bottom-wear-fb133293"
                      },
                      "title": {
                        "type": "text",
                        "value": "Bottomwear"
                      },
                      "subtitle": {
                        "type": "text",
                        "value": "Chinos | Trousers | Pants"
                      },
                      "overlay_image": {
                        "type": "image_picker",
                        "value": "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/pictures/free/original/bottomwear_tdkhn2.jpg"
                      }
                    }
                  },
                  {
                    "type": "collection",
                    "name": "Collection",
                    "props": {
                      "collection": {
                        "type": "collection",
                        "value": "t-shirt-7ee3cbcd"
                      },
                      "title": {
                        "type": "text",
                        "value": "Shirts"
                      },
                      "subtitle": {
                        "type": "text",
                        "value": "Casual"
                      },
                      "overlay_image": {
                        "type": "image_picker",
                        "value": "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/pictures/free/original/t-shirt_re9srk.jpg"
                      }
                    }
                  }
                ],
                "predicate": {
                  "screen": {
                    "mobile": true,
                    "desktop": true,
                    "tablet": true
                  },
                  "user": {
                    "authenticated": true,
                    "anonymous": true
                  },
                  "route": {
                    "selected": "none",
                    "query": {},
                    "exact_u_r_l": ""
                  }
                },
                "name": "collectionGrid",
                "props": {
                  "title": {
                    "type": "text",
                    "value": "Collections"
                  },
                  "subtitle": {
                    "type": "text",
                    "value": "Buy from our"
                  },
                  "full_width": {
                    "type": "checkbox",
                    "value": false
                  }
                }
              }
            ],
            "page_key": "home"
          },
          {
            "page_sections": [
              {
                "blocks": [],
                "predicate": {
                  "screen": {
                    "mobile": true,
                    "desktop": true,
                    "tablet": true
                  },
                  "user": {
                    "authenticated": true,
                    "anonymous": true
                  },
                  "route": {
                    "selected": "none",
                    "query": {},
                    "exact_u_r_l": ""
                  }
                },
                "name": "brandTemplate",
                "props": {
                  "item_count": {
                    "type": "range",
                    "value": 4
                  },
                  "full_width": {
                    "type": "checkbox",
                    "value": false
                  },
                  "heading": {
                    "type": "text",
                    "value": ""
                  },
                  "brand_type": {
                    "type": "radio",
                    "value": "all"
                  },
                  "layout": {
                    "type": "select",
                    "value": "grid"
                  },
                  "department": {
                    "type": "department",
                    "value": "others"
                  }
                }
              }
            ],
            "page_key": "brands"
          },
          {
            "page_sections": [],
            "page_key": "cart-landing"
          },
          {
            "page_sections": [
              {
                "blocks": [],
                "predicate": {
                  "screen": {
                    "mobile": true,
                    "desktop": true,
                    "tablet": true
                  },
                  "user": {
                    "authenticated": true,
                    "anonymous": true
                  },
                  "route": {
                    "selected": "none",
                    "query": {},
                    "exact_u_r_l": ""
                  }
                },
                "name": "categoriesTemplate",
                "props": {
                  "item_count": {
                    "type": "range",
                    "value": 4
                  },
                  "full_width": {
                    "type": "checkbox",
                    "value": false
                  },
                  "heading": {
                    "type": "text",
                    "value": ""
                  },
                  "layout": {
                    "type": "select",
                    "value": "grid"
                  },
                  "view_all": {
                    "type": "checkbox",
                    "value": false
                  }
                }
              }
            ],
            "page_key": "categories"
          },
          {
            "page_sections": [
              {
                "blocks": [],
                "predicate": {
                  "screen": {
                    "mobile": true,
                    "desktop": true,
                    "tablet": true
                  },
                  "user": {
                    "authenticated": true,
                    "anonymous": true
                  },
                  "route": {
                    "selected": "none",
                    "query": {},
                    "exact_u_r_l": ""
                  }
                },
                "name": "collectionTemplate",
                "props": {
                  "heading": {
                    "type": "text",
                    "value": "Featured Collections"
                  },
                  "item_count": {
                    "type": "range",
                    "value": 4
                  },
                  "full_width": {
                    "type": "checkbox",
                    "value": false
                  },
                  "layout": {
                    "type": "select",
                    "value": "grid"
                  }
                }
              }
            ],
            "page_key": "collections"
          },
          {
            "page_sections": [],
            "page_key": "compare-products"
          },
          {
            "page_sections": [],
            "page_key": "product-description"
          },
          {
            "page_sections": [],
            "page_key": "product-listing"
          },
          {
            "page_sections": [],
            "page_key": "wishlist"
          }
        ]
      },
      "global_schema": {
        "props": [
          {
            "type": "color",
            "id": "header_bg_color",
            "default": "#ffffff",
            "category": "Header",
            "label": "Header background Color"
          },
          {
            "type": "color",
            "id": "footer_bg_color",
            "default": "#1b1b1b",
            "category": "Footer",
            "label": "Footer background Color"
          },
          {
            "type": "text",
            "id": "footer_text",
            "default": "",
            "category": "Footer",
            "label": "Footer Text"
          },
          {
            "type": "checkbox",
            "id": "disable_cart",
            "default": false,
            "category": "Cart",
            "label": "Disable Cart"
          }
        ]
      },
      "current": "default",
      "page_schema": [
        {
          "props": [],
          "_id": "5fe182f763d26dadc8d205c6",
          "page": "blog"
        },
        {
          "props": [],
          "_id": "5fe182f763d26d0a36d205c7",
          "page": "brands"
        },
        {
          "props": [
            {
              "type": "checkbox",
              "id": "gst",
              "label": "GST",
              "default": true,
              "info": "Show GST on cart"
            },
            {
              "type": "checkbox",
              "id": "staff_selection",
              "label": "Staff Selection",
              "default": true,
              "info": "Show Staff selection on Cart"
            },
            {
              "type": "checkbox",
              "id": "enable_customer",
              "label": "Customer",
              "default": true,
              "info": "Placing on behalf of customer"
            },
            {
              "type": "checkbox",
              "id": "enable_guest",
              "label": "Enable Guest Checkout",
              "default": true,
              "info": "Enable Continue as Guest"
            }
          ],
          "_id": "5fe182f763d26d81c5d205c8",
          "page": "cart-landing"
        },
        {
          "props": [],
          "_id": "5fe182f763d26d7e15d205c9",
          "page": "cart-review"
        },
        {
          "props": [],
          "_id": "5fe182f763d26d270ed205ca",
          "page": "categories"
        },
        {
          "props": [],
          "_id": "5fe182f763d26d9b4fd205cb",
          "page": "collection-listing"
        },
        {
          "props": [],
          "_id": "5fe182f763d26da6ecd205cc",
          "page": "collections"
        },
        {
          "props": [],
          "_id": "5fe182f763d26d7156d205cd",
          "page": "compare-products"
        },
        {
          "props": [],
          "_id": "5fe182f763d26d62bad205ce",
          "page": "home"
        },
        {
          "props": [],
          "_id": "5fe182f763d26d5afcd205cf",
          "page": "order-review"
        },
        {
          "props": [],
          "_id": "5fe182f763d26def8dd205d0",
          "page": "order-tracking-details"
        },
        {
          "props": [],
          "_id": "5fe182f763d26d381fd205d1",
          "page": "order-tracking"
        },
        {
          "props": [
            {
              "type": "text",
              "id": "shipping_link",
              "label": "Shipping Link",
              "default": "https://fynd.freshdesk.com/support/solutions/folders/33000111600",
              "info": "Link of shipping page"
            },
            {
              "type": "checkbox",
              "id": "original_image",
              "label": "Use original Image",
              "default": false,
              "info": "Use original product image."
            },
            {
              "type": "checkbox",
              "id": "wishlist",
              "label": "Wishlist",
              "default": true,
              "info": "Show Wishlist for product"
            },
            {
              "type": "checkbox",
              "id": "reviews",
              "label": "Review",
              "default": true,
              "info": "Show Reviews of product"
            },
            {
              "type": "checkbox",
              "id": "add_to_compare",
              "label": "Add to Compare",
              "default": true,
              "info": "Allow comparison of products"
            },
            {
              "type": "checkbox",
              "id": "size_guide",
              "label": "Size Guide",
              "default": true,
              "info": "Show Size Guide"
            },
            {
              "type": "checkbox",
              "id": "product_request",
              "label": "Product Request",
              "default": true,
              "info": "Show Product Request"
            },
            {
              "type": "checkbox",
              "id": "share",
              "label": "Share",
              "default": true,
              "info": "Enable Sharing product"
            },
            {
              "type": "checkbox",
              "id": "sold_by",
              "label": "Show Sold By",
              "default": true,
              "info": "Show name of the store"
            },
            {
              "type": "checkbox",
              "id": "store_selection",
              "label": "Seller Store Selection",
              "default": true,
              "info": "Allow to explicitly select stores"
            },
            {
              "type": "checkbox",
              "id": "compare_products",
              "label": "Compare Products",
              "default": true,
              "info": "Show Most Compared Products"
            },
            {
              "type": "checkbox",
              "id": "variants",
              "label": "Product Variants",
              "default": true,
              "info": "Show Product Variants"
            },
            {
              "type": "checkbox",
              "id": "ratings",
              "label": "Product Rating",
              "default": true,
              "info": "Show Product Ratings"
            },
            {
              "type": "checkbox",
              "id": "similar_products",
              "label": "Similar Products",
              "default": true,
              "info": "Show Similar Products"
            },
            {
              "type": "checkbox",
              "id": "bulk_prices",
              "label": "Bulk Prices",
              "default": true,
              "info": "Show Bulk Prices"
            },
            {
              "type": "checkbox",
              "id": "showDeliveryInfo",
              "label": "Delivery Info",
              "default": true,
              "info": "Show Delivery Date"
            }
          ],
          "_id": "5fe182f763d26d29bbd205d2",
          "page": "product-description"
        },
        {
          "props": [],
          "_id": "5fe182f763d26da5f0d205d3",
          "page": "product-listing"
        },
        {
          "props": [],
          "_id": "5fe182f763d26d4e2dd205d5",
          "page": "wishlist"
        },
        {
          "props": [
            {
              "default": true,
              "id": "header",
              "label": "Header",
              "type": "checkbox"
            },
            {
              "default": true,
              "id": "footer",
              "label": "Footer",
              "type": "checkbox"
            }
          ],
          "_id": "5fe7166cbaae343115de8555",
          "page": "tesr"
        }
      ],
      "list": [
        {
          "name": "default",
          "global_config": {
            "static": {
              "props": {
                "colors": {
                  "primary_color": "#7043f7",
                  "secondary_color": "#02d1cb",
                  "accent_color": "#FFFFFF",
                  "link_color": "#7043f7",
                  "button_secondary_color": "#000000",
                  "bg_color": "#F8F8F8"
                }
              }
            },
            "custom": {
              "props": {
                "disable_cart": false
              }
            }
          },
          "page": [
            {
              "settings": {
                "props": {
                  "show_info_message": true
                }
              },
              "page": "cart-landing"
            }
          ],
          "_id": "5fc4bb9078e957737e7d79a3"
        }
      ]
    },
    "colors": {
      "primary_color": "#41434C",
      "secondary_color": "#41434C",
      "accent_color": "#FFFFFF",
      "link_color": "#33B1C0",
      "button_secondary_color": "#000000",
      "bg_color": "#F8F8F8"
    },
    "font": {
      "variants": {
        "light": {
          "name": "300",
          "file": ""
        },
        "regular": {
          "name": "regular",
          "file": "https://fonts.gstatic.com/s/judson/v13/FeVRS0Fbvbc14VxRD7N01bV7kg.ttf"
        },
        "medium": {
          "name": "500",
          "file": ""
        },
        "semi_bold": {
          "name": "600",
          "file": ""
        },
        "bold": {
          "name": "700",
          "file": "https://fonts.gstatic.com/s/judson/v13/FeVSS0Fbvbc14Vxps5xQ3Z5nm29Gww.ttf"
        }
      },
      "family": "Judson"
    },
    "applied": true,
    "published": false,
    "archived": false,
    "customized": true,
    "version": "1.1.19",
    "tags": [],
    "_id": "5fe17f7063d26dc54fd202b4",
    "pages": {
      "home": {
        "path": "",
        "type": "system",
        "sections": [],
        "value": "home",
        "text": "Home"
      },
      "brands": {
        "path": "brands",
        "type": "system",
        "sections": [],
        "value": "brands",
        "text": "Brands"
      },
      "cart-landing": {
        "path": "cart/bag",
        "type": "system",
        "sections": [],
        "value": "cart-landing",
        "text": "Cart Landing"
      },
      "categories": {
        "path": "categories",
        "type": "system",
        "sections": [],
        "value": "categories",
        "text": "Categories"
      },
      "collections": {
        "path": "collections",
        "type": "system",
        "sections": [],
        "value": "collections",
        "text": "Collections"
      },
      "compare-products": {
        "path": "compare",
        "type": "system",
        "sections": [],
        "value": "compare-products",
        "text": "Compare Products"
      },
      "product-description": {
        "path": "product",
        "type": "system",
        "sections": [],
        "value": "product-description",
        "text": "Product Description"
      },
      "product-listing": {
        "path": "products",
        "type": "system",
        "sections": [],
        "value": "product-listing",
        "text": "Product Listing"
      },
      "collection-listing": {
        "path": "collection",
        "type": "system",
        "sections": [],
        "value": "collection-listing",
        "text": "COllection Listing"
      },
      "wishlist": {
        "path": "wishlist",
        "type": "system",
        "sections": [],
        "value": "wishlist",
        "text": "Wishlist"
      }
    },
    "available_sections": [
      {
        "props": [
          {
            "type": "text",
            "id": "heading",
            "default": "Brands",
            "label": "Brands Heading"
          },
          {
            "type": "radio",
            "id": "brand_type",
            "default": "all",
            "options": [
              {
                "value": "all",
                "text": "All"
              },
              {
                "value": "department",
                "text": "Department"
              },
              {
                "value": "handpicked",
                "text": "Handpicked"
              }
            ]
          },
          {
            "type": "department",
            "id": "department",
            "label": "Department",
            "info": "Select a department of brands",
            "note": "Department only applies if 'department' type is selected"
          },
          {
            "type": "range",
            "id": "item_count",
            "min": 3,
            "max": 5,
            "step": 1,
            "unit": "",
            "label": "Items per row",
            "default": 4,
            "info": "Maximum items allowed per row"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          },
          {
            "id": "layout",
            "type": "select",
            "options": [
              {
                "value": "grid",
                "text": "Grid View"
              },
              {
                "value": "horizontal",
                "text": "Horizontal View"
              }
            ],
            "default": "grid",
            "label": "Layout",
            "info": "Alignment of content"
          },
          {
            "type": "checkbox",
            "id": "view_all",
            "default": false,
            "label": "Show View All"
          }
        ],
        "blocks": [
          {
            "type": "brand-item",
            "name": "Brand Item",
            "props": [
              {
                "type": "brand",
                "id": "brand",
                "label": "Select Brand"
              }
            ]
          }
        ],
        "_id": "5feacca5bec232d59b89283a",
        "name": "brandTemplate",
        "label": "Brands List Page"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "heading",
            "default": "Categories",
            "label": "Categories Heading"
          },
          {
            "id": "layout",
            "type": "select",
            "options": [
              {
                "value": "grid",
                "text": "Grid View"
              },
              {
                "value": "horizontal",
                "text": "Horizontal View"
              }
            ],
            "default": "grid",
            "label": "Layout",
            "info": "Alignment of content"
          },
          {
            "type": "range",
            "id": "item_count",
            "min": 3,
            "max": 5,
            "step": 1,
            "unit": "",
            "label": "Items per row",
            "default": 4,
            "info": "Maximum items allowed per row"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          },
          {
            "type": "checkbox",
            "id": "view_all",
            "default": false,
            "label": "Show View All",
            "info": "Check to show View All Button"
          }
        ],
        "blocks": [],
        "_id": "5feacca5bec232404189283b",
        "name": "categoriesTemplate",
        "label": "Categories Page"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "title",
            "default": "",
            "label": "Title"
          },
          {
            "type": "text",
            "id": "subtitle",
            "default": "",
            "label": "Subtitle"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          }
        ],
        "blocks": [
          {
            "type": "collection",
            "name": "Collection",
            "props": [
              {
                "type": "collection",
                "id": "collection",
                "label": "Select a collection"
              },
              {
                "type": "image_picker",
                "id": "overlayImage",
                "default": "",
                "label": "Background image",
                "info": "Background Image"
              },
              {
                "type": "text",
                "id": "title",
                "default": "",
                "label": "Overlay title"
              },
              {
                "type": "text",
                "id": "subtitle",
                "default": "",
                "label": "Overlay subtitle"
              }
            ]
          }
        ],
        "_id": "5feacca5bec2321fd589283c",
        "name": "collectionGrid",
        "label": "Collection Grid"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "heading",
            "default": "Collection List",
            "label": "Collection Heading",
            "info": "Collection Heading"
          },
          {
            "type": "range",
            "id": "item_count",
            "min": 3,
            "max": 5,
            "step": 1,
            "unit": "",
            "label": "Collections per row",
            "default": 2,
            "info": "Maximum items allowed per row"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          }
        ],
        "blocks": [
          {
            "type": "collection",
            "name": "Collection",
            "props": [
              {
                "type": "collection",
                "id": "collection",
                "label": "Select a collection"
              }
            ]
          }
        ],
        "_id": "5feacca5bec2323bf689283d",
        "name": "collectionList",
        "label": "Collection List"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "heading",
            "default": "Collections",
            "label": "Collection Heading"
          },
          {
            "type": "range",
            "id": "item_count",
            "min": 3,
            "max": 5,
            "step": 1,
            "unit": "",
            "label": "Collections per row",
            "default": 4,
            "info": "Maximum items allowed per row"
          },
          {
            "type": "radio",
            "id": "collection_type",
            "default": "all",
            "options": [
              {
                "value": "all",
                "text": "All"
              },
              {
                "value": "handpicked",
                "text": "Handpicked"
              }
            ]
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          },
          {
            "id": "layout",
            "type": "select",
            "options": [
              {
                "value": "grid",
                "text": "Grid View"
              },
              {
                "value": "horizontal",
                "text": "Horizontal View"
              }
            ],
            "default": "grid",
            "label": "Layout",
            "info": "Alignment of content"
          },
          {
            "type": "checkbox",
            "id": "view_all",
            "default": false,
            "label": "Show View All"
          }
        ],
        "blocks": [
          {
            "type": "collection-item",
            "name": "Collection Item",
            "props": [
              {
                "type": "collection",
                "id": "collection",
                "label": "Select collection"
              }
            ]
          }
        ],
        "_id": "5feacca5bec23263b489283e",
        "name": "collectionTemplate",
        "label": "Collection List Page"
      },
      {
        "props": [
          {
            "type": "code",
            "id": "code",
            "label": "Custom HTML",
            "info": "Add Your custom HTML Code below. You can also use the full screen icon to open a code editor and add your code"
          }
        ],
        "blocks": [],
        "_id": "5feacca5bec232409489283f",
        "name": "customHtml",
        "label": "Custom HTML"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "heading",
            "default": "Featured Products",
            "label": "Section Heading"
          },
          {
            "type": "range",
            "id": "item_count",
            "min": 3,
            "max": 5,
            "step": 1,
            "unit": "",
            "label": "Products per row",
            "default": 4,
            "info": "Maximum items allowed per row"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          }
        ],
        "blocks": [
          {
            "type": "product",
            "name": "Product",
            "props": [
              {
                "type": "product",
                "id": "product",
                "label": "Select a Product",
                "info": "Product Item to be displayed"
              }
            ]
          }
        ],
        "_id": "5feacca5bec2326213892840",
        "name": "featuredProducts",
        "label": "Featured Products",
        "preset": {
          "blocks": [
            {
              "name": "Product"
            },
            {
              "name": "Product"
            },
            {
              "name": "Product"
            },
            {
              "name": "Product"
            }
          ]
        }
      },
      {
        "props": [
          {
            "type": "range",
            "id": "item_count",
            "min": 1,
            "max": 4,
            "step": 1,
            "unit": "",
            "label": "No of items",
            "default": 4,
            "info": "Maximum items allowed per row"
          }
        ],
        "blocks": [
          {
            "type": "gallery_image",
            "name": "Image",
            "props": [
              {
                "type": "image_picker",
                "id": "image",
                "label": "Gallery Image",
                "default": "https://hdn-1.fynd.com/company/163/applications/5d5265c8f8ad9cae6dbf18f1/theme/pictures/free/original/theme-image-1603773049684.svg"
              },
              {
                "type": "text",
                "id": "caption",
                "label": "Image Caption",
                "default": ""
              },
              {
                "type": "url",
                "id": "link",
                "label": "Link",
                "default": "",
                "info": "Link to redirect"
              }
            ]
          }
        ],
        "_id": "5feacca5bec2321047892841",
        "name": "gallery",
        "label": "Gallery",
        "preset": {
          "props": {
            "item_count": 4
          },
          "blocks": [
            {
              "name": "Image"
            },
            {
              "name": "Image"
            },
            {
              "name": "Image"
            },
            {
              "name": "Image"
            }
          ]
        }
      },
      {
        "props": [
          {
            "type": "url",
            "id": "ctaLink",
            "default": "",
            "label": "Redirect Link"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          }
        ],
        "blocks": [],
        "_id": "5feacca5bec232b085892842",
        "name": "heroBanner",
        "label": "Hero Banner"
      },
      {
        "props": [
          {
            "id": "image",
            "type": "image_picker",
            "label": "Hero Image",
            "default": ""
          },
          {
            "type": "text",
            "id": "heading",
            "default": "",
            "label": "Heading"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          },
          {
            "id": "overlayLayout",
            "type": "select",
            "options": [
              {
                "value": "left",
                "text": "Align Left"
              },
              {
                "value": "center",
                "text": "Align Center"
              },
              {
                "value": "right",
                "text": "Align Right"
              }
            ],
            "default": "left",
            "label": "Overlay Layout",
            "info": "Alignment of overlay content"
          },
          {
            "type": "image_picker",
            "id": "overlayImage",
            "default": "",
            "label": "Overlay image",
            "info": "Overlay Image"
          },
          {
            "type": "text",
            "id": "text",
            "default": "",
            "label": "Overlay Text"
          },
          {
            "type": "color",
            "id": "text_color",
            "default": "#000",
            "label": "Text Color"
          },
          {
            "type": "url",
            "id": "ctaLink",
            "default": "",
            "label": "Redirect Link"
          },
          {
            "type": "text",
            "id": "ctaText",
            "default": "Shop Now",
            "label": "Button Text"
          }
        ],
        "blocks": [],
        "_id": "5feacca5bec2321e74892843",
        "name": "imageBanner",
        "label": "Hero Image"
      },
      {
        "props": [
          {
            "id": "videoUrl",
            "type": "url",
            "label": "Video URL",
            "default": ""
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          },
          {
            "id": "coverUrl",
            "type": "image_picker",
            "label": "Video Cover Image URL",
            "default": ""
          },
          {
            "type": "checkbox",
            "id": "showcontrols",
            "default": false,
            "label": "Show Controls on Video",
            "info": "Check to show controls on video"
          },
          {
            "type": "select",
            "id": "size",
            "options": [
              {
                "value": "adapt",
                "text": "Adapt"
              },
              {
                "value": "small",
                "text": "Small"
              },
              {
                "value": "medium",
                "text": "Medium"
              },
              {
                "value": "large",
                "text": "Large"
              }
            ],
            "default": "adapt",
            "label": "Video Height",
            "info": "Height of Video"
          },
          {
            "type": "text",
            "id": "heading",
            "default": "",
            "label": "Heading"
          },
          {
            "type": "color",
            "id": "heading_color",
            "default": "#000",
            "label": "Headin Text Color"
          },
          {
            "type": "text",
            "id": "subHeading",
            "default": "",
            "label": "Sub-heading"
          },
          {
            "type": "color",
            "id": "subheading_color",
            "default": "#000",
            "label": "Subheading Text Color"
          },
          {
            "type": "url",
            "id": "ctaLink",
            "default": "",
            "label": "Redirect Link"
          },
          {
            "type": "text",
            "id": "ctaText",
            "default": "ShopNow",
            "label": "Button Text"
          }
        ],
        "blocks": [],
        "_id": "5feacca5bec232bfc8892844",
        "name": "videoBanner",
        "label": "Hero Video"
      },
      {
        "props": [
          {
            "type": "select",
            "id": "slide_height",
            "options": [
              {
                "value": "adapt",
                "text": "Adapt to first image"
              },
              {
                "value": "small",
                "text": "Small"
              },
              {
                "value": "medium",
                "text": "Medium"
              },
              {
                "value": "large",
                "text": "Large"
              }
            ],
            "default": "adapt",
            "label": "Slide height",
            "info": "Size of the slide"
          },
          {
            "type": "checkbox",
            "id": "autoplay",
            "default": false,
            "label": "AutoPlay Slides",
            "info": "Check to autoplay slides"
          },
          {
            "type": "range",
            "id": "slide_interval",
            "min": 1,
            "max": 10,
            "step": 1,
            "unit": "sec",
            "label": "Change slides after every",
            "default": 2,
            "info": "Autoplay slide duration"
          }
        ],
        "blocks": [
          {
            "type": "gallery_image",
            "name": "Image",
            "props": [
              {
                "type": "image_picker",
                "id": "image",
                "label": "Gallery Image"
              },
              {
                "type": "url",
                "id": "slide_link",
                "label": "Slide Link"
              }
            ]
          }
        ],
        "_id": "5feacca5bec232a916892845",
        "name": "image-carousel",
        "label": "Image Carousel",
        "preset": {
          "blocks": [
            {
              "name": "Image"
            },
            {
              "name": "Image"
            }
          ]
        }
      },
      {
        "props": [
          {
            "type": "text",
            "id": "heading",
            "default": "Featured Collections",
            "label": "Collection Heading"
          },
          {
            "type": "range",
            "id": "item_count",
            "min": 2,
            "max": 5,
            "step": 1,
            "unit": "",
            "label": "Products per row",
            "default": 2,
            "info": "Maximum items allowed per row"
          },
          {
            "type": "collection",
            "id": "collection",
            "label": "Collection",
            "info": "Select a collection to display its products"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          }
        ],
        "blocks": [],
        "_id": "5feacca5bec23258ec892846",
        "name": "productList",
        "label": "Product List",
        "preset": {
          "props": {
            "heading": "Featured Products",
            "item_count": 4,
            "collection": ""
          }
        }
      },
      {
        "props": [
          {
            "type": "checkbox",
            "id": "autoplay",
            "default": false,
            "label": "AutoPlay Slides"
          },
          {
            "type": "range",
            "id": "slide_interval",
            "min": 1,
            "max": 10,
            "step": 1,
            "unit": "sec",
            "label": "Change slides every",
            "default": 2
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          }
        ],
        "blocks": [
          {
            "type": "testimonial",
            "name": "Testimonial",
            "props": [
              {
                "type": "textarea",
                "id": "testimonialText",
                "label": "Text for Testimonial",
                "default": "",
                "info": "Text for testimonial",
                "placeholder": "Text"
              },
              {
                "type": "text",
                "id": "author",
                "label": "Customers name"
              }
            ]
          }
        ],
        "_id": "5feacca5bec23299e8892847",
        "name": "testimonials",
        "label": "Testimonial"
      },
      {
        "props": [
          {
            "type": "select",
            "id": "slide_height",
            "options": [
              {
                "value": "adapt",
                "text": "Adapt to first video"
              },
              {
                "value": "small",
                "text": "Small"
              },
              {
                "value": "medium",
                "text": "Medium"
              },
              {
                "value": "large",
                "text": "Large"
              }
            ],
            "default": "adapt",
            "label": "Slide height",
            "info": "Size of the slide"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          },
          {
            "type": "checkbox",
            "id": "autoplay",
            "default": false,
            "label": "AutoPlay Slides",
            "info": "Check to autoplay slides"
          },
          {
            "type": "range",
            "id": "slide_interval",
            "min": 1,
            "max": 10,
            "step": 1,
            "unit": "sec",
            "label": "Change slides every",
            "default": 2,
            "info": "Autoplay slide duration"
          }
        ],
        "blocks": [
          {
            "type": "video_item",
            "name": "Video Slide",
            "props": [
              {
                "id": "videoUrl",
                "type": "url",
                "label": "Video URL",
                "default": ""
              },
              {
                "type": "checkbox",
                "id": "showcontrols",
                "default": false,
                "label": "Show Controls on Video",
                "info": "Check to show controls on video"
              }
            ]
          }
        ],
        "_id": "5feacca5bec232d89b892848",
        "name": "videoCarousel",
        "label": "Video Carousel"
      }
    ],
    "sections": [
      {
        "page_sections": [
          {
            "blocks": [],
            "predicate": {
              "screen": {
                "mobile": true,
                "desktop": true,
                "tablet": true
              },
              "user": {
                "authenticated": true,
                "anonymous": true
              },
              "route": {
                "selected": "none",
                "query": {},
                "exact_u_r_l": ""
              }
            },
            "name": "brandTemplate",
            "props": {
              "title": {
                "type": "text",
                "value": "Brands"
              },
              "item_count": {
                "type": "range",
                "value": 4
              },
              "full_width": {
                "type": "checkbox",
                "value": false
              },
              "heading": {
                "type": "text",
                "value": "Brands"
              },
              "brand_type": {
                "type": "radio",
                "value": "all"
              },
              "department": {
                "type": "department",
                "value": null
              },
              "layout": {
                "type": "select",
                "value": "grid"
              },
              "view_all": {
                "type": "checkbox",
                "value": null
              }
            }
          }
        ],
        "page_key": "product-description"
      },
      {
        "page_sections": [],
        "page_key": "collection-listing"
      },
      {
        "page_sections": [
          {
            "blocks": [
              {
                "type": "brand-item",
                "name": "Brand Item",
                "props": {
                  "brand": {
                    "type": "brand",
                    "value": {
                      "display": "Apple",
                      "id": "apple"
                    }
                  }
                }
              },
              {
                "type": "brand-item",
                "name": "Brand Item",
                "props": {
                  "brand": {
                    "type": "brand",
                    "value": {
                      "display": "Gionee",
                      "id": "gionee"
                    }
                  }
                }
              }
            ],
            "predicate": {
              "screen": {
                "mobile": true,
                "desktop": true,
                "tablet": true
              },
              "user": {
                "authenticated": true,
                "anonymous": true
              },
              "route": {
                "selected": "none",
                "query": {},
                "exact_u_r_l": ""
              }
            },
            "name": "brandTemplate",
            "props": {
              "heading": {
                "type": "text",
                "value": "Brandss"
              },
              "brand_type": {
                "type": "radio",
                "value": "handpicked"
              },
              "department": {
                "type": "department"
              },
              "item_count": {
                "value": 4,
                "type": "range"
              },
              "full_width": {
                "value": false,
                "type": "checkbox"
              },
              "layout": {
                "type": "select",
                "value": "grid"
              },
              "view_all": {
                "value": false,
                "type": "checkbox"
              }
            }
          }
        ],
        "page_key": "home"
      },
      {
        "page_sections": [
          {
            "blocks": [],
            "predicate": {
              "screen": {
                "mobile": true,
                "desktop": true,
                "tablet": true
              },
              "user": {
                "authenticated": true,
                "anonymous": true
              },
              "route": {
                "selected": "none",
                "query": {},
                "exact_u_r_l": ""
              }
            },
            "name": "brandTemplate",
            "props": {
              "title": {
                "type": "text",
                "value": "Brands"
              },
              "item_count": {
                "type": "range",
                "value": 4
              },
              "full_width": {
                "type": "checkbox",
                "value": false
              }
            }
          }
        ],
        "page_key": "brands"
      },
      {
        "page_sections": [],
        "page_key": "cart-landing"
      },
      {
        "page_sections": [
          {
            "blocks": [],
            "predicate": {
              "screen": {
                "mobile": true,
                "desktop": true,
                "tablet": true
              },
              "user": {
                "authenticated": true,
                "anonymous": true
              },
              "route": {
                "selected": "none",
                "query": {},
                "exact_u_r_l": ""
              }
            },
            "name": "categoriesTemplate",
            "props": {
              "item_count": {
                "type": "range",
                "value": 4
              },
              "full_width": {
                "type": "checkbox",
                "value": false
              }
            }
          }
        ],
        "page_key": "categories"
      },
      {
        "page_sections": [
          {
            "blocks": [],
            "predicate": {
              "screen": {
                "mobile": true,
                "desktop": true,
                "tablet": true
              },
              "user": {
                "authenticated": true,
                "anonymous": true
              },
              "route": {
                "selected": "none",
                "query": {},
                "exact_u_r_l": ""
              }
            },
            "name": "collectionTemplate",
            "props": {
              "heading": {
                "type": "text",
                "value": "Featured Collections"
              },
              "item_count": {
                "type": "range",
                "value": 4
              },
              "full_width": {
                "type": "checkbox",
                "value": false
              }
            }
          }
        ],
        "page_key": "collections"
      },
      {
        "page_sections": [],
        "page_key": "compare-products"
      },
      {
        "page_sections": [],
        "page_key": "product-listing"
      },
      {
        "page_sections": [],
        "page_key": "wishlist"
      },
      {
        "page_sections": [],
        "page_key": "tesr"
      }
    ],
    "application": "5e737afb97e0f586bf9d04db",
    "available_pages": [
      {
        "path": "product",
        "type": "system",
        "sections": [],
        "text": "Product Description",
        "value": "product-description"
      },
      {
        "path": "collection",
        "type": "system",
        "sections": [],
        "text": "Collection Listing",
        "value": "collection-listing"
      },
      {
        "path": "",
        "type": "system",
        "sections": [
          {
            "_id": "5feacca5bec2327927892853",
            "attributes": {
              "page": "home"
            }
          }
        ],
        "value": "home",
        "text": "Home"
      },
      {
        "path": "brands",
        "type": "system",
        "sections": [
          {
            "_id": "5feacca5bec2326422892854",
            "attributes": {
              "page": "brands"
            }
          }
        ],
        "value": "brands",
        "text": "Brands"
      },
      {
        "path": "cart/bag",
        "type": "system",
        "sections": [],
        "value": "cart-landing",
        "text": "Cart Landing"
      },
      {
        "path": "categories",
        "type": "system",
        "sections": [
          {
            "_id": "5feacca5bec232424c892855",
            "attributes": {
              "page": "categories"
            }
          }
        ],
        "value": "categories",
        "text": "Categories"
      },
      {
        "path": "collections",
        "type": "system",
        "sections": [
          {
            "_id": "5feacca5bec23281de892856",
            "attributes": {
              "page": "collections"
            }
          }
        ],
        "value": "collections",
        "text": "Collections"
      },
      {
        "path": "compare",
        "type": "system",
        "sections": [],
        "value": "compare-products",
        "text": "Compare Products"
      },
      {
        "path": "products",
        "type": "system",
        "sections": [],
        "value": "product-listing",
        "text": "Product Listing"
      },
      {
        "path": "wishlist",
        "type": "system",
        "sections": [],
        "value": "wishlist",
        "text": "Wishlist"
      },
      {
        "path": "sections/test",
        "type": "sections",
        "sections": [],
        "text": "test",
        "value": "test"
      }
    ],
    "styles": {},
    "created_at": "2020-12-22T05:09:04.720Z",
    "updated_at": "2021-01-24T11:22:41.376Z"
  }
}
```
</details>

</details>









---


#### getThemeForPreviewV2
Get a theme for a preview




```swift
applicationClient.theme.getThemeForPreviewV2(themeId: themeId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| themeId | String | yes | ID of the theme to be retrieved |  



A theme can be previewed before applying it. Use this API to retrieve the preview of a theme by its ID.

*Returned Response:*




[ThemesSchema](#ThemesSchema)

Success. Returns a JSON object of the theme. Check the example shown below or refer `ThemesSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Preview Theme</i></summary>

```json
{
  "value": {
    "information": {
      "images": {
        "desktop": [
          "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/pictures/free/original/artisan-desktop.png"
        ],
        "android": [
          "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/pictures/free/original/artisan-mobile.png"
        ],
        "ios": [
          "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/pictures/free/original/artisan-mobile.png"
        ],
        "thumbnail": [
          "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/pictures/free/original/artisan-desktop.png"
        ]
      },
      "features": [
        "Responsive"
      ],
      "name": "Akash-Artisan"
    },
    "src": {
      "link": "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/sources/J-1s-N-pl-archive.zip"
    },
    "assets": {
      "css": {
        "link": "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/assets/Ia4m885Mw2-themeBundle.css"
      },
      "umd_js": {
        "link": "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/assets/nEPGyc15g-themeBundle.umd.min.js"
      },
      "common_js": {
        "link": "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/assets/5f7tOB5rpq-themeBundle.common.js"
      }
    },
    "config": {
      "preset": {
        "sections": [
          {
            "page_sections": [
              {
                "blocks": [
                  {
                    "type": "gallery_image",
                    "name": "Image",
                    "props": {
                      "image": {
                        "type": "image_picker",
                        "value": "https://hdn-1.fynd.com/company/163/applications/5d5265c8f8ad9cae6dbf18f1/theme/pictures/free/original/theme-image-1601219133573.jpeg"
                      },
                      "slide_link": {
                        "type": "url",
                        "value": "https://www.turtleonline.in/collection/men-collection-vcahuo2q"
                      }
                    }
                  },
                  {
                    "type": "gallery_image",
                    "name": "Image",
                    "props": {
                      "image": {
                        "type": "image_picker",
                        "value": "https://hdn-1.fynd.com/company/163/applications/5d5265c8f8ad9cae6dbf18f1/theme/pictures/free/original/theme-image-1601219184350.jpeg"
                      },
                      "slide_link": {
                        "type": "url",
                        "value": "https://www.turtleonline.in/collection/shirts-5e9654ad"
                      }
                    }
                  }
                ],
                "predicate": {
                  "screen": {
                    "mobile": true,
                    "desktop": true,
                    "tablet": true
                  },
                  "user": {
                    "authenticated": true,
                    "anonymous": true
                  },
                  "route": {
                    "selected": "none",
                    "query": {},
                    "exact_u_r_l": ""
                  }
                },
                "name": "image-carousel",
                "props": {
                  "slide_height": {
                    "type": "select",
                    "value": "adapt"
                  },
                  "autoplay": {
                    "type": "checkbox",
                    "value": false
                  },
                  "slide_interval": {
                    "type": "range",
                    "value": 2
                  }
                }
              },
              {
                "blocks": [
                  {
                    "type": "collection",
                    "name": "Collection",
                    "props": {
                      "collection": {
                        "type": "collection",
                        "value": "accessories-7ee89654"
                      },
                      "title": {
                        "type": "text",
                        "value": "Turtle sports club"
                      },
                      "subtitle": {
                        "type": "text",
                        "value": "Casual Collections"
                      },
                      "overlay_image": {
                        "type": "image_picker",
                        "value": "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/pictures/free/original/casual_nfadbl.jpg"
                      }
                    }
                  },
                  {
                    "type": "collection",
                    "name": "Collection",
                    "props": {
                      "collection": {
                        "type": "collection",
                        "value": "bottom-wear-fb133293"
                      },
                      "title": {
                        "type": "text",
                        "value": "Formal Collection"
                      },
                      "subtitle": {
                        "type": "text",
                        "value": "Turtle Tailor Mark"
                      },
                      "overlay_image": {
                        "type": "image_picker",
                        "value": "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/pictures/free/original/tailors_nsrrfl.jpg"
                      }
                    }
                  },
                  {
                    "type": "collection",
                    "name": "Collection",
                    "props": {
                      "collection": {
                        "type": "collection",
                        "value": "bottom-wear-fb133293"
                      },
                      "title": {
                        "type": "text",
                        "value": "Bottomwear"
                      },
                      "subtitle": {
                        "type": "text",
                        "value": "Chinos | Trousers | Pants"
                      },
                      "overlay_image": {
                        "type": "image_picker",
                        "value": "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/pictures/free/original/bottomwear_tdkhn2.jpg"
                      }
                    }
                  },
                  {
                    "type": "collection",
                    "name": "Collection",
                    "props": {
                      "collection": {
                        "type": "collection",
                        "value": "t-shirt-7ee3cbcd"
                      },
                      "title": {
                        "type": "text",
                        "value": "Shirts"
                      },
                      "subtitle": {
                        "type": "text",
                        "value": "Casual"
                      },
                      "overlay_image": {
                        "type": "image_picker",
                        "value": "https://hdn-1.addsale.com/x0/company/1/applications/5e737afb97e0f586bf9d04db/theme/pictures/free/original/t-shirt_re9srk.jpg"
                      }
                    }
                  }
                ],
                "predicate": {
                  "screen": {
                    "mobile": true,
                    "desktop": true,
                    "tablet": true
                  },
                  "user": {
                    "authenticated": true,
                    "anonymous": true
                  },
                  "route": {
                    "selected": "none",
                    "query": {},
                    "exact_u_r_l": ""
                  }
                },
                "name": "collectionGrid",
                "props": {
                  "title": {
                    "type": "text",
                    "value": "Collections"
                  },
                  "subtitle": {
                    "type": "text",
                    "value": "Buy from our"
                  },
                  "full_width": {
                    "type": "checkbox",
                    "value": false
                  }
                }
              }
            ],
            "page_key": "home"
          },
          {
            "page_sections": [
              {
                "blocks": [],
                "predicate": {
                  "screen": {
                    "mobile": true,
                    "desktop": true,
                    "tablet": true
                  },
                  "user": {
                    "authenticated": true,
                    "anonymous": true
                  },
                  "route": {
                    "selected": "none",
                    "query": {},
                    "exact_u_r_l": ""
                  }
                },
                "name": "brandTemplate",
                "props": {
                  "item_count": {
                    "type": "range",
                    "value": 4
                  },
                  "full_width": {
                    "type": "checkbox",
                    "value": false
                  },
                  "heading": {
                    "type": "text",
                    "value": ""
                  },
                  "brand_type": {
                    "type": "radio",
                    "value": "all"
                  },
                  "layout": {
                    "type": "select",
                    "value": "grid"
                  },
                  "department": {
                    "type": "department",
                    "value": "others"
                  }
                }
              }
            ],
            "page_key": "brands"
          },
          {
            "page_sections": [],
            "page_key": "cart-landing"
          },
          {
            "page_sections": [
              {
                "blocks": [],
                "predicate": {
                  "screen": {
                    "mobile": true,
                    "desktop": true,
                    "tablet": true
                  },
                  "user": {
                    "authenticated": true,
                    "anonymous": true
                  },
                  "route": {
                    "selected": "none",
                    "query": {},
                    "exact_u_r_l": ""
                  }
                },
                "name": "categoriesTemplate",
                "props": {
                  "item_count": {
                    "type": "range",
                    "value": 4
                  },
                  "full_width": {
                    "type": "checkbox",
                    "value": false
                  },
                  "heading": {
                    "type": "text",
                    "value": ""
                  },
                  "layout": {
                    "type": "select",
                    "value": "grid"
                  },
                  "view_all": {
                    "type": "checkbox",
                    "value": false
                  }
                }
              }
            ],
            "page_key": "categories"
          },
          {
            "page_sections": [
              {
                "blocks": [],
                "predicate": {
                  "screen": {
                    "mobile": true,
                    "desktop": true,
                    "tablet": true
                  },
                  "user": {
                    "authenticated": true,
                    "anonymous": true
                  },
                  "route": {
                    "selected": "none",
                    "query": {},
                    "exact_u_r_l": ""
                  }
                },
                "name": "collectionTemplate",
                "props": {
                  "heading": {
                    "type": "text",
                    "value": "Featured Collections"
                  },
                  "item_count": {
                    "type": "range",
                    "value": 4
                  },
                  "full_width": {
                    "type": "checkbox",
                    "value": false
                  },
                  "layout": {
                    "type": "select",
                    "value": "grid"
                  }
                }
              }
            ],
            "page_key": "collections"
          },
          {
            "page_sections": [],
            "page_key": "compare-products"
          },
          {
            "page_sections": [],
            "page_key": "product-description"
          },
          {
            "page_sections": [],
            "page_key": "product-listing"
          },
          {
            "page_sections": [],
            "page_key": "wishlist"
          }
        ]
      },
      "global_schema": {
        "props": [
          {
            "type": "color",
            "id": "header_bg_color",
            "default": "#ffffff",
            "category": "Header",
            "label": "Header background Color"
          },
          {
            "type": "color",
            "id": "footer_bg_color",
            "default": "#1b1b1b",
            "category": "Footer",
            "label": "Footer background Color"
          },
          {
            "type": "text",
            "id": "footer_text",
            "default": "",
            "category": "Footer",
            "label": "Footer Text"
          },
          {
            "type": "checkbox",
            "id": "disable_cart",
            "default": false,
            "category": "Cart",
            "label": "Disable Cart"
          }
        ]
      },
      "current": "default",
      "page_schema": [
        {
          "props": [],
          "_id": "5fe182f763d26dadc8d205c6",
          "page": "blog"
        },
        {
          "props": [],
          "_id": "5fe182f763d26d0a36d205c7",
          "page": "brands"
        },
        {
          "props": [
            {
              "type": "checkbox",
              "id": "gst",
              "label": "GST",
              "default": true,
              "info": "Show GST on cart"
            },
            {
              "type": "checkbox",
              "id": "staff_selection",
              "label": "Staff Selection",
              "default": true,
              "info": "Show Staff selection on Cart"
            },
            {
              "type": "checkbox",
              "id": "enable_customer",
              "label": "Customer",
              "default": true,
              "info": "Placing on behalf of customer"
            },
            {
              "type": "checkbox",
              "id": "enable_guest",
              "label": "Enable Guest Checkout",
              "default": true,
              "info": "Enable Continue as Guest"
            }
          ],
          "_id": "5fe182f763d26d81c5d205c8",
          "page": "cart-landing"
        },
        {
          "props": [],
          "_id": "5fe182f763d26d7e15d205c9",
          "page": "cart-review"
        },
        {
          "props": [],
          "_id": "5fe182f763d26d270ed205ca",
          "page": "categories"
        },
        {
          "props": [],
          "_id": "5fe182f763d26d9b4fd205cb",
          "page": "collection-listing"
        },
        {
          "props": [],
          "_id": "5fe182f763d26da6ecd205cc",
          "page": "collections"
        },
        {
          "props": [],
          "_id": "5fe182f763d26d7156d205cd",
          "page": "compare-products"
        },
        {
          "props": [],
          "_id": "5fe182f763d26d62bad205ce",
          "page": "home"
        },
        {
          "props": [],
          "_id": "5fe182f763d26d5afcd205cf",
          "page": "order-review"
        },
        {
          "props": [],
          "_id": "5fe182f763d26def8dd205d0",
          "page": "order-tracking-details"
        },
        {
          "props": [],
          "_id": "5fe182f763d26d381fd205d1",
          "page": "order-tracking"
        },
        {
          "props": [
            {
              "type": "text",
              "id": "shipping_link",
              "label": "Shipping Link",
              "default": "https://fynd.freshdesk.com/support/solutions/folders/33000111600",
              "info": "Link of shipping page"
            },
            {
              "type": "checkbox",
              "id": "original_image",
              "label": "Use original Image",
              "default": false,
              "info": "Use original product image."
            },
            {
              "type": "checkbox",
              "id": "wishlist",
              "label": "Wishlist",
              "default": true,
              "info": "Show Wishlist for product"
            },
            {
              "type": "checkbox",
              "id": "reviews",
              "label": "Review",
              "default": true,
              "info": "Show Reviews of product"
            },
            {
              "type": "checkbox",
              "id": "add_to_compare",
              "label": "Add to Compare",
              "default": true,
              "info": "Allow comparison of products"
            },
            {
              "type": "checkbox",
              "id": "size_guide",
              "label": "Size Guide",
              "default": true,
              "info": "Show Size Guide"
            },
            {
              "type": "checkbox",
              "id": "product_request",
              "label": "Product Request",
              "default": true,
              "info": "Show Product Request"
            },
            {
              "type": "checkbox",
              "id": "share",
              "label": "Share",
              "default": true,
              "info": "Enable Sharing product"
            },
            {
              "type": "checkbox",
              "id": "sold_by",
              "label": "Show Sold By",
              "default": true,
              "info": "Show name of the store"
            },
            {
              "type": "checkbox",
              "id": "store_selection",
              "label": "Seller Store Selection",
              "default": true,
              "info": "Allow to explicitly select stores"
            },
            {
              "type": "checkbox",
              "id": "compare_products",
              "label": "Compare Products",
              "default": true,
              "info": "Show Most Compared Products"
            },
            {
              "type": "checkbox",
              "id": "variants",
              "label": "Product Variants",
              "default": true,
              "info": "Show Product Variants"
            },
            {
              "type": "checkbox",
              "id": "ratings",
              "label": "Product Rating",
              "default": true,
              "info": "Show Product Ratings"
            },
            {
              "type": "checkbox",
              "id": "similar_products",
              "label": "Similar Products",
              "default": true,
              "info": "Show Similar Products"
            },
            {
              "type": "checkbox",
              "id": "bulk_prices",
              "label": "Bulk Prices",
              "default": true,
              "info": "Show Bulk Prices"
            },
            {
              "type": "checkbox",
              "id": "showDeliveryInfo",
              "label": "Delivery Info",
              "default": true,
              "info": "Show Delivery Date"
            }
          ],
          "_id": "5fe182f763d26d29bbd205d2",
          "page": "product-description"
        },
        {
          "props": [],
          "_id": "5fe182f763d26da5f0d205d3",
          "page": "product-listing"
        },
        {
          "props": [],
          "_id": "5fe182f763d26d4e2dd205d5",
          "page": "wishlist"
        },
        {
          "props": [
            {
              "default": true,
              "id": "header",
              "label": "Header",
              "type": "checkbox"
            },
            {
              "default": true,
              "id": "footer",
              "label": "Footer",
              "type": "checkbox"
            }
          ],
          "_id": "5fe7166cbaae343115de8555",
          "page": "tesr"
        }
      ],
      "list": [
        {
          "name": "default",
          "global_config": {
            "static": {
              "props": {
                "colors": {
                  "primary_color": "#7043f7",
                  "secondary_color": "#02d1cb",
                  "accent_color": "#FFFFFF",
                  "link_color": "#7043f7",
                  "button_secondary_color": "#000000",
                  "bg_color": "#F8F8F8"
                }
              }
            },
            "custom": {
              "props": {
                "disable_cart": false
              }
            }
          },
          "page": [
            {
              "settings": {
                "props": {
                  "show_info_message": true
                }
              },
              "page": "cart-landing"
            }
          ],
          "_id": "5fc4bb9078e957737e7d79a3"
        }
      ]
    },
    "colors": {
      "primary_color": "#41434C",
      "secondary_color": "#41434C",
      "accent_color": "#FFFFFF",
      "link_color": "#33B1C0",
      "button_secondary_color": "#000000",
      "bg_color": "#F8F8F8"
    },
    "font": {
      "variants": {
        "light": {
          "name": "300",
          "file": ""
        },
        "regular": {
          "name": "regular",
          "file": "https://fonts.gstatic.com/s/judson/v13/FeVRS0Fbvbc14VxRD7N01bV7kg.ttf"
        },
        "medium": {
          "name": "500",
          "file": ""
        },
        "semi_bold": {
          "name": "600",
          "file": ""
        },
        "bold": {
          "name": "700",
          "file": "https://fonts.gstatic.com/s/judson/v13/FeVSS0Fbvbc14Vxps5xQ3Z5nm29Gww.ttf"
        }
      },
      "family": "Judson"
    },
    "applied": true,
    "published": false,
    "archived": false,
    "customized": true,
    "version": "1.1.19",
    "tags": [],
    "_id": "5fe17f7063d26dc54fd202b4",
    "pages": {
      "home": {
        "path": "",
        "type": "system",
        "sections": [],
        "value": "home",
        "text": "Home"
      },
      "brands": {
        "path": "brands",
        "type": "system",
        "sections": [],
        "value": "brands",
        "text": "Brands"
      },
      "cart-landing": {
        "path": "cart/bag",
        "type": "system",
        "sections": [],
        "value": "cart-landing",
        "text": "Cart Landing"
      },
      "categories": {
        "path": "categories",
        "type": "system",
        "sections": [],
        "value": "categories",
        "text": "Categories"
      },
      "collections": {
        "path": "collections",
        "type": "system",
        "sections": [],
        "value": "collections",
        "text": "Collections"
      },
      "compare-products": {
        "path": "compare",
        "type": "system",
        "sections": [],
        "value": "compare-products",
        "text": "Compare Products"
      },
      "product-description": {
        "path": "product",
        "type": "system",
        "sections": [],
        "value": "product-description",
        "text": "Product Description"
      },
      "product-listing": {
        "path": "products",
        "type": "system",
        "sections": [],
        "value": "product-listing",
        "text": "Product Listing"
      },
      "collection-listing": {
        "path": "collection",
        "type": "system",
        "sections": [],
        "value": "collection-listing",
        "text": "COllection Listing"
      },
      "wishlist": {
        "path": "wishlist",
        "type": "system",
        "sections": [],
        "value": "wishlist",
        "text": "Wishlist"
      }
    },
    "available_sections": [
      {
        "props": [
          {
            "type": "text",
            "id": "heading",
            "default": "Brands",
            "label": "Brands Heading"
          },
          {
            "type": "radio",
            "id": "brand_type",
            "default": "all",
            "options": [
              {
                "value": "all",
                "text": "All"
              },
              {
                "value": "department",
                "text": "Department"
              },
              {
                "value": "handpicked",
                "text": "Handpicked"
              }
            ]
          },
          {
            "type": "department",
            "id": "department",
            "label": "Department",
            "info": "Select a department of brands",
            "note": "Department only applies if 'department' type is selected"
          },
          {
            "type": "range",
            "id": "item_count",
            "min": 3,
            "max": 5,
            "step": 1,
            "unit": "",
            "label": "Items per row",
            "default": 4,
            "info": "Maximum items allowed per row"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          },
          {
            "id": "layout",
            "type": "select",
            "options": [
              {
                "value": "grid",
                "text": "Grid View"
              },
              {
                "value": "horizontal",
                "text": "Horizontal View"
              }
            ],
            "default": "grid",
            "label": "Layout",
            "info": "Alignment of content"
          },
          {
            "type": "checkbox",
            "id": "view_all",
            "default": false,
            "label": "Show View All"
          }
        ],
        "blocks": [
          {
            "type": "brand-item",
            "name": "Brand Item",
            "props": [
              {
                "type": "brand",
                "id": "brand",
                "label": "Select Brand"
              }
            ]
          }
        ],
        "_id": "5feacca5bec232d59b89283a",
        "name": "brandTemplate",
        "label": "Brands List Page"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "heading",
            "default": "Categories",
            "label": "Categories Heading"
          },
          {
            "id": "layout",
            "type": "select",
            "options": [
              {
                "value": "grid",
                "text": "Grid View"
              },
              {
                "value": "horizontal",
                "text": "Horizontal View"
              }
            ],
            "default": "grid",
            "label": "Layout",
            "info": "Alignment of content"
          },
          {
            "type": "range",
            "id": "item_count",
            "min": 3,
            "max": 5,
            "step": 1,
            "unit": "",
            "label": "Items per row",
            "default": 4,
            "info": "Maximum items allowed per row"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          },
          {
            "type": "checkbox",
            "id": "view_all",
            "default": false,
            "label": "Show View All",
            "info": "Check to show View All Button"
          }
        ],
        "blocks": [],
        "_id": "5feacca5bec232404189283b",
        "name": "categoriesTemplate",
        "label": "Categories Page"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "title",
            "default": "",
            "label": "Title"
          },
          {
            "type": "text",
            "id": "subtitle",
            "default": "",
            "label": "Subtitle"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          }
        ],
        "blocks": [
          {
            "type": "collection",
            "name": "Collection",
            "props": [
              {
                "type": "collection",
                "id": "collection",
                "label": "Select a collection"
              },
              {
                "type": "image_picker",
                "id": "overlayImage",
                "default": "",
                "label": "Background image",
                "info": "Background Image"
              },
              {
                "type": "text",
                "id": "title",
                "default": "",
                "label": "Overlay title"
              },
              {
                "type": "text",
                "id": "subtitle",
                "default": "",
                "label": "Overlay subtitle"
              }
            ]
          }
        ],
        "_id": "5feacca5bec2321fd589283c",
        "name": "collectionGrid",
        "label": "Collection Grid"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "heading",
            "default": "Collection List",
            "label": "Collection Heading",
            "info": "Collection Heading"
          },
          {
            "type": "range",
            "id": "item_count",
            "min": 3,
            "max": 5,
            "step": 1,
            "unit": "",
            "label": "Collections per row",
            "default": 2,
            "info": "Maximum items allowed per row"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          }
        ],
        "blocks": [
          {
            "type": "collection",
            "name": "Collection",
            "props": [
              {
                "type": "collection",
                "id": "collection",
                "label": "Select a collection"
              }
            ]
          }
        ],
        "_id": "5feacca5bec2323bf689283d",
        "name": "collectionList",
        "label": "Collection List"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "heading",
            "default": "Collections",
            "label": "Collection Heading"
          },
          {
            "type": "range",
            "id": "item_count",
            "min": 3,
            "max": 5,
            "step": 1,
            "unit": "",
            "label": "Collections per row",
            "default": 4,
            "info": "Maximum items allowed per row"
          },
          {
            "type": "radio",
            "id": "collection_type",
            "default": "all",
            "options": [
              {
                "value": "all",
                "text": "All"
              },
              {
                "value": "handpicked",
                "text": "Handpicked"
              }
            ]
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          },
          {
            "id": "layout",
            "type": "select",
            "options": [
              {
                "value": "grid",
                "text": "Grid View"
              },
              {
                "value": "horizontal",
                "text": "Horizontal View"
              }
            ],
            "default": "grid",
            "label": "Layout",
            "info": "Alignment of content"
          },
          {
            "type": "checkbox",
            "id": "view_all",
            "default": false,
            "label": "Show View All"
          }
        ],
        "blocks": [
          {
            "type": "collection-item",
            "name": "Collection Item",
            "props": [
              {
                "type": "collection",
                "id": "collection",
                "label": "Select collection"
              }
            ]
          }
        ],
        "_id": "5feacca5bec23263b489283e",
        "name": "collectionTemplate",
        "label": "Collection List Page"
      },
      {
        "props": [
          {
            "type": "code",
            "id": "code",
            "label": "Custom HTML",
            "info": "Add Your custom HTML Code below. You can also use the full screen icon to open a code editor and add your code"
          }
        ],
        "blocks": [],
        "_id": "5feacca5bec232409489283f",
        "name": "customHtml",
        "label": "Custom HTML"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "heading",
            "default": "Featured Products",
            "label": "Section Heading"
          },
          {
            "type": "range",
            "id": "item_count",
            "min": 3,
            "max": 5,
            "step": 1,
            "unit": "",
            "label": "Products per row",
            "default": 4,
            "info": "Maximum items allowed per row"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          }
        ],
        "blocks": [
          {
            "type": "product",
            "name": "Product",
            "props": [
              {
                "type": "product",
                "id": "product",
                "label": "Select a Product",
                "info": "Product Item to be displayed"
              }
            ]
          }
        ],
        "_id": "5feacca5bec2326213892840",
        "name": "featuredProducts",
        "label": "Featured Products",
        "preset": {
          "blocks": [
            {
              "name": "Product"
            },
            {
              "name": "Product"
            },
            {
              "name": "Product"
            },
            {
              "name": "Product"
            }
          ]
        }
      },
      {
        "props": [
          {
            "type": "range",
            "id": "item_count",
            "min": 1,
            "max": 4,
            "step": 1,
            "unit": "",
            "label": "No of items",
            "default": 4,
            "info": "Maximum items allowed per row"
          }
        ],
        "blocks": [
          {
            "type": "gallery_image",
            "name": "Image",
            "props": [
              {
                "type": "image_picker",
                "id": "image",
                "label": "Gallery Image",
                "default": "https://hdn-1.fynd.com/company/163/applications/5d5265c8f8ad9cae6dbf18f1/theme/pictures/free/original/theme-image-1603773049684.svg"
              },
              {
                "type": "text",
                "id": "caption",
                "label": "Image Caption",
                "default": ""
              },
              {
                "type": "url",
                "id": "link",
                "label": "Link",
                "default": "",
                "info": "Link to redirect"
              }
            ]
          }
        ],
        "_id": "5feacca5bec2321047892841",
        "name": "gallery",
        "label": "Gallery",
        "preset": {
          "props": {
            "item_count": 4
          },
          "blocks": [
            {
              "name": "Image"
            },
            {
              "name": "Image"
            },
            {
              "name": "Image"
            },
            {
              "name": "Image"
            }
          ]
        }
      },
      {
        "props": [
          {
            "type": "url",
            "id": "ctaLink",
            "default": "",
            "label": "Redirect Link"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          }
        ],
        "blocks": [],
        "_id": "5feacca5bec232b085892842",
        "name": "heroBanner",
        "label": "Hero Banner"
      },
      {
        "props": [
          {
            "id": "image",
            "type": "image_picker",
            "label": "Hero Image",
            "default": ""
          },
          {
            "type": "text",
            "id": "heading",
            "default": "",
            "label": "Heading"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          },
          {
            "id": "overlayLayout",
            "type": "select",
            "options": [
              {
                "value": "left",
                "text": "Align Left"
              },
              {
                "value": "center",
                "text": "Align Center"
              },
              {
                "value": "right",
                "text": "Align Right"
              }
            ],
            "default": "left",
            "label": "Overlay Layout",
            "info": "Alignment of overlay content"
          },
          {
            "type": "image_picker",
            "id": "overlayImage",
            "default": "",
            "label": "Overlay image",
            "info": "Overlay Image"
          },
          {
            "type": "text",
            "id": "text",
            "default": "",
            "label": "Overlay Text"
          },
          {
            "type": "color",
            "id": "text_color",
            "default": "#000",
            "label": "Text Color"
          },
          {
            "type": "url",
            "id": "ctaLink",
            "default": "",
            "label": "Redirect Link"
          },
          {
            "type": "text",
            "id": "ctaText",
            "default": "Shop Now",
            "label": "Button Text"
          }
        ],
        "blocks": [],
        "_id": "5feacca5bec2321e74892843",
        "name": "imageBanner",
        "label": "Hero Image"
      },
      {
        "props": [
          {
            "id": "videoUrl",
            "type": "url",
            "label": "Video URL",
            "default": ""
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          },
          {
            "id": "coverUrl",
            "type": "image_picker",
            "label": "Video Cover Image URL",
            "default": ""
          },
          {
            "type": "checkbox",
            "id": "showcontrols",
            "default": false,
            "label": "Show Controls on Video",
            "info": "Check to show controls on video"
          },
          {
            "type": "select",
            "id": "size",
            "options": [
              {
                "value": "adapt",
                "text": "Adapt"
              },
              {
                "value": "small",
                "text": "Small"
              },
              {
                "value": "medium",
                "text": "Medium"
              },
              {
                "value": "large",
                "text": "Large"
              }
            ],
            "default": "adapt",
            "label": "Video Height",
            "info": "Height of Video"
          },
          {
            "type": "text",
            "id": "heading",
            "default": "",
            "label": "Heading"
          },
          {
            "type": "color",
            "id": "heading_color",
            "default": "#000",
            "label": "Headin Text Color"
          },
          {
            "type": "text",
            "id": "subHeading",
            "default": "",
            "label": "Sub-heading"
          },
          {
            "type": "color",
            "id": "subheading_color",
            "default": "#000",
            "label": "Subheading Text Color"
          },
          {
            "type": "url",
            "id": "ctaLink",
            "default": "",
            "label": "Redirect Link"
          },
          {
            "type": "text",
            "id": "ctaText",
            "default": "ShopNow",
            "label": "Button Text"
          }
        ],
        "blocks": [],
        "_id": "5feacca5bec232bfc8892844",
        "name": "videoBanner",
        "label": "Hero Video"
      },
      {
        "props": [
          {
            "type": "select",
            "id": "slide_height",
            "options": [
              {
                "value": "adapt",
                "text": "Adapt to first image"
              },
              {
                "value": "small",
                "text": "Small"
              },
              {
                "value": "medium",
                "text": "Medium"
              },
              {
                "value": "large",
                "text": "Large"
              }
            ],
            "default": "adapt",
            "label": "Slide height",
            "info": "Size of the slide"
          },
          {
            "type": "checkbox",
            "id": "autoplay",
            "default": false,
            "label": "AutoPlay Slides",
            "info": "Check to autoplay slides"
          },
          {
            "type": "range",
            "id": "slide_interval",
            "min": 1,
            "max": 10,
            "step": 1,
            "unit": "sec",
            "label": "Change slides after every",
            "default": 2,
            "info": "Autoplay slide duration"
          }
        ],
        "blocks": [
          {
            "type": "gallery_image",
            "name": "Image",
            "props": [
              {
                "type": "image_picker",
                "id": "image",
                "label": "Gallery Image"
              },
              {
                "type": "url",
                "id": "slide_link",
                "label": "Slide Link"
              }
            ]
          }
        ],
        "_id": "5feacca5bec232a916892845",
        "name": "image-carousel",
        "label": "Image Carousel",
        "preset": {
          "blocks": [
            {
              "name": "Image"
            },
            {
              "name": "Image"
            }
          ]
        }
      },
      {
        "props": [
          {
            "type": "text",
            "id": "heading",
            "default": "Featured Collections",
            "label": "Collection Heading"
          },
          {
            "type": "range",
            "id": "item_count",
            "min": 2,
            "max": 5,
            "step": 1,
            "unit": "",
            "label": "Products per row",
            "default": 2,
            "info": "Maximum items allowed per row"
          },
          {
            "type": "collection",
            "id": "collection",
            "label": "Collection",
            "info": "Select a collection to display its products"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          }
        ],
        "blocks": [],
        "_id": "5feacca5bec23258ec892846",
        "name": "productList",
        "label": "Product List",
        "preset": {
          "props": {
            "heading": "Featured Products",
            "item_count": 4,
            "collection": ""
          }
        }
      },
      {
        "props": [
          {
            "type": "checkbox",
            "id": "autoplay",
            "default": false,
            "label": "AutoPlay Slides"
          },
          {
            "type": "range",
            "id": "slide_interval",
            "min": 1,
            "max": 10,
            "step": 1,
            "unit": "sec",
            "label": "Change slides every",
            "default": 2
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          }
        ],
        "blocks": [
          {
            "type": "testimonial",
            "name": "Testimonial",
            "props": [
              {
                "type": "textarea",
                "id": "testimonialText",
                "label": "Text for Testimonial",
                "default": "",
                "info": "Text for testimonial",
                "placeholder": "Text"
              },
              {
                "type": "text",
                "id": "author",
                "label": "Customers name"
              }
            ]
          }
        ],
        "_id": "5feacca5bec23299e8892847",
        "name": "testimonials",
        "label": "Testimonial"
      },
      {
        "props": [
          {
            "type": "select",
            "id": "slide_height",
            "options": [
              {
                "value": "adapt",
                "text": "Adapt to first video"
              },
              {
                "value": "small",
                "text": "Small"
              },
              {
                "value": "medium",
                "text": "Medium"
              },
              {
                "value": "large",
                "text": "Large"
              }
            ],
            "default": "adapt",
            "label": "Slide height",
            "info": "Size of the slide"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "default": false,
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          },
          {
            "type": "checkbox",
            "id": "autoplay",
            "default": false,
            "label": "AutoPlay Slides",
            "info": "Check to autoplay slides"
          },
          {
            "type": "range",
            "id": "slide_interval",
            "min": 1,
            "max": 10,
            "step": 1,
            "unit": "sec",
            "label": "Change slides every",
            "default": 2,
            "info": "Autoplay slide duration"
          }
        ],
        "blocks": [
          {
            "type": "video_item",
            "name": "Video Slide",
            "props": [
              {
                "id": "videoUrl",
                "type": "url",
                "label": "Video URL",
                "default": ""
              },
              {
                "type": "checkbox",
                "id": "showcontrols",
                "default": false,
                "label": "Show Controls on Video",
                "info": "Check to show controls on video"
              }
            ]
          }
        ],
        "_id": "5feacca5bec232d89b892848",
        "name": "videoCarousel",
        "label": "Video Carousel"
      }
    ],
    "sections": [
      {
        "page_sections": [
          {
            "blocks": [],
            "predicate": {
              "screen": {
                "mobile": true,
                "desktop": true,
                "tablet": true
              },
              "user": {
                "authenticated": true,
                "anonymous": true
              },
              "route": {
                "selected": "none",
                "query": {},
                "exact_u_r_l": ""
              }
            },
            "name": "brandTemplate",
            "props": {
              "title": {
                "type": "text",
                "value": "Brands"
              },
              "item_count": {
                "type": "range",
                "value": 4
              },
              "full_width": {
                "type": "checkbox",
                "value": false
              },
              "heading": {
                "type": "text",
                "value": "Brands"
              },
              "brand_type": {
                "type": "radio",
                "value": "all"
              },
              "department": {
                "type": "department",
                "value": null
              },
              "layout": {
                "type": "select",
                "value": "grid"
              },
              "view_all": {
                "type": "checkbox",
                "value": null
              }
            }
          }
        ],
        "page_key": "product-description"
      },
      {
        "page_sections": [],
        "page_key": "collection-listing"
      },
      {
        "page_sections": [
          {
            "blocks": [
              {
                "type": "brand-item",
                "name": "Brand Item",
                "props": {
                  "brand": {
                    "type": "brand",
                    "value": {
                      "display": "Apple",
                      "id": "apple"
                    }
                  }
                }
              },
              {
                "type": "brand-item",
                "name": "Brand Item",
                "props": {
                  "brand": {
                    "type": "brand",
                    "value": {
                      "display": "Gionee",
                      "id": "gionee"
                    }
                  }
                }
              }
            ],
            "predicate": {
              "screen": {
                "mobile": true,
                "desktop": true,
                "tablet": true
              },
              "user": {
                "authenticated": true,
                "anonymous": true
              },
              "route": {
                "selected": "none",
                "query": {},
                "exact_u_r_l": ""
              }
            },
            "name": "brandTemplate",
            "props": {
              "heading": {
                "type": "text",
                "value": "Brandss"
              },
              "brand_type": {
                "type": "radio",
                "value": "handpicked"
              },
              "department": {
                "type": "department"
              },
              "item_count": {
                "value": 4,
                "type": "range"
              },
              "full_width": {
                "value": false,
                "type": "checkbox"
              },
              "layout": {
                "type": "select",
                "value": "grid"
              },
              "view_all": {
                "value": false,
                "type": "checkbox"
              }
            }
          }
        ],
        "page_key": "home"
      },
      {
        "page_sections": [
          {
            "blocks": [],
            "predicate": {
              "screen": {
                "mobile": true,
                "desktop": true,
                "tablet": true
              },
              "user": {
                "authenticated": true,
                "anonymous": true
              },
              "route": {
                "selected": "none",
                "query": {},
                "exact_u_r_l": ""
              }
            },
            "name": "brandTemplate",
            "props": {
              "title": {
                "type": "text",
                "value": "Brands"
              },
              "item_count": {
                "type": "range",
                "value": 4
              },
              "full_width": {
                "type": "checkbox",
                "value": false
              }
            }
          }
        ],
        "page_key": "brands"
      },
      {
        "page_sections": [],
        "page_key": "cart-landing"
      },
      {
        "page_sections": [
          {
            "blocks": [],
            "predicate": {
              "screen": {
                "mobile": true,
                "desktop": true,
                "tablet": true
              },
              "user": {
                "authenticated": true,
                "anonymous": true
              },
              "route": {
                "selected": "none",
                "query": {},
                "exact_u_r_l": ""
              }
            },
            "name": "categoriesTemplate",
            "props": {
              "item_count": {
                "type": "range",
                "value": 4
              },
              "full_width": {
                "type": "checkbox",
                "value": false
              }
            }
          }
        ],
        "page_key": "categories"
      },
      {
        "page_sections": [
          {
            "blocks": [],
            "predicate": {
              "screen": {
                "mobile": true,
                "desktop": true,
                "tablet": true
              },
              "user": {
                "authenticated": true,
                "anonymous": true
              },
              "route": {
                "selected": "none",
                "query": {},
                "exact_u_r_l": ""
              }
            },
            "name": "collectionTemplate",
            "props": {
              "heading": {
                "type": "text",
                "value": "Featured Collections"
              },
              "item_count": {
                "type": "range",
                "value": 4
              },
              "full_width": {
                "type": "checkbox",
                "value": false
              }
            }
          }
        ],
        "page_key": "collections"
      },
      {
        "page_sections": [],
        "page_key": "compare-products"
      },
      {
        "page_sections": [],
        "page_key": "product-listing"
      },
      {
        "page_sections": [],
        "page_key": "wishlist"
      },
      {
        "page_sections": [],
        "page_key": "tesr"
      }
    ],
    "application": "5e737afb97e0f586bf9d04db",
    "available_pages": [
      {
        "path": "product",
        "type": "system",
        "sections": [],
        "text": "Product Description",
        "value": "product-description"
      },
      {
        "path": "collection",
        "type": "system",
        "sections": [],
        "text": "Collection Listing",
        "value": "collection-listing"
      },
      {
        "path": "",
        "type": "system",
        "sections": [
          {
            "_id": "5feacca5bec2327927892853",
            "attributes": {
              "page": "home"
            }
          }
        ],
        "value": "home",
        "text": "Home"
      },
      {
        "path": "brands",
        "type": "system",
        "sections": [
          {
            "_id": "5feacca5bec2326422892854",
            "attributes": {
              "page": "brands"
            }
          }
        ],
        "value": "brands",
        "text": "Brands"
      },
      {
        "path": "cart/bag",
        "type": "system",
        "sections": [],
        "value": "cart-landing",
        "text": "Cart Landing"
      },
      {
        "path": "categories",
        "type": "system",
        "sections": [
          {
            "_id": "5feacca5bec232424c892855",
            "attributes": {
              "page": "categories"
            }
          }
        ],
        "value": "categories",
        "text": "Categories"
      },
      {
        "path": "collections",
        "type": "system",
        "sections": [
          {
            "_id": "5feacca5bec23281de892856",
            "attributes": {
              "page": "collections"
            }
          }
        ],
        "value": "collections",
        "text": "Collections"
      },
      {
        "path": "compare",
        "type": "system",
        "sections": [],
        "value": "compare-products",
        "text": "Compare Products"
      },
      {
        "path": "products",
        "type": "system",
        "sections": [],
        "value": "product-listing",
        "text": "Product Listing"
      },
      {
        "path": "wishlist",
        "type": "system",
        "sections": [],
        "value": "wishlist",
        "text": "Wishlist"
      },
      {
        "path": "sections/test",
        "type": "sections",
        "sections": [],
        "text": "test",
        "value": "test"
      }
    ],
    "styles": {},
    "created_at": "2020-12-22T05:09:04.720Z",
    "updated_at": "2021-01-24T11:22:41.376Z"
  }
}
```
</details>

</details>









---



### Schemas

 
 
 #### [ThemeReq](#ThemeReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | marketplaceThemeId | String? |  yes  | The ID of the marketplace theme to apply to the company. |

---


 
 
 #### [ThemeSchema](#ThemeSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  | The unique identifier for the theme. |
 | name | String? |  yes  | The name of the theme. |
 | marketplaceThemeId | [MarketplaceThemeId](#MarketplaceThemeId)? |  yes  |  |
 | companyId | Int? |  yes  | The ID of the company that the theme belongs to. |
 | meta | [ThemeMeta](#ThemeMeta)? |  yes  |  |
 | createdAt | String? |  yes  | The timestamp when the theme was created. |
 | updatedAt | String? |  yes  | The timestamp when the theme was last updated. |

---


 
 
 #### [MarketplaceThemeId](#MarketplaceThemeId)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  | The unique identifier for the marketplace theme. |
 | isDefault | Bool? |  yes  | Whether the theme is the default theme. |

---


 
 
 #### [ThemeMeta](#ThemeMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | payment | [ThemePayment](#ThemePayment)? |  yes  |  |
 | industry | [String]? |  yes  | A list of industry categories the theme is suitable for. |
 | description | String? |  yes  | A description of the theme. |
 | images | [ThemeImages](#ThemeImages)? |  yes  |  |
 | slug | String? |  yes  | The slug for the theme. |

---


 
 
 #### [ThemePayment](#ThemePayment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isPaid | Bool? |  yes  | Whether the theme is a paid theme. |
 | amount | Double? |  yes  | The amount to be paid for the theme. |

---


 
 
 #### [ThemeImages](#ThemeImages)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | desktop | String? |  yes  | The URL of the desktop image for the theme. |
 | mobile | String? |  yes  | The URL of the mobile image for the theme. |

---


 
 
 #### [AvailablePageSchema](#AvailablePageSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String? |  yes  |  |
 | text | String? |  yes  |  |
 | path | String? |  yes  |  |
 | type | String? |  yes  |  |
 | sections | [[AvailablePageSchemaSections](#AvailablePageSchemaSections)]? |  yes  |  |
 | sectionsMeta | [[AvailablePageSectionMetaAttributes](#AvailablePageSectionMetaAttributes)]? |  yes  |  |
 | theme | String? |  yes  |  |
 | seo | [AvailablePageSeo](#AvailablePageSeo)? |  yes  |  |
 | props | [[String: Any]]? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [AvailablePageSectionMetaAttributes](#AvailablePageSectionMetaAttributes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | attributes | [String: Any]? |  yes  |  |

---


 
 
 #### [AvailablePageSeo](#AvailablePageSeo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | description | String? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [AvailablePageSchemaSections](#AvailablePageSchemaSections)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | label | String? |  yes  |  |
 | props | [String: Any]? |  yes  |  |
 | blocks | [[String: Any]]? |  yes  |  |
 | preset | [String: Any]? |  yes  |  |
 | predicate | [AvailablePagePredicate](#AvailablePagePredicate)? |  yes  |  |

---


 
 
 #### [AvailablePageScreenPredicate](#AvailablePageScreenPredicate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mobile | Bool? |  yes  |  |
 | desktop | Bool? |  yes  |  |
 | tablet | Bool? |  yes  |  |

---


 
 
 #### [AvailablePageUserPredicate](#AvailablePageUserPredicate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | authenticated | Bool? |  yes  |  |
 | anonymous | Bool? |  yes  |  |

---


 
 
 #### [AvailablePageRoutePredicate](#AvailablePageRoutePredicate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | selected | String? |  yes  |  |
 | exactUrl | String? |  yes  |  |
 | query | [String: Any]? |  yes  |  |

---


 
 
 #### [AvailablePagePredicate](#AvailablePagePredicate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | screen | [AvailablePageScreenPredicate](#AvailablePageScreenPredicate)? |  yes  |  |
 | user | [AvailablePageUserPredicate](#AvailablePageUserPredicate)? |  yes  |  |
 | route | [AvailablePageRoutePredicate](#AvailablePageRoutePredicate)? |  yes  |  |

---


 
 
 #### [MarketplaceThemeResponse](#MarketplaceThemeResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | Int? |  yes  | HTTP status code |
 | body | [MarketplaceThemeResponseBody](#MarketplaceThemeResponseBody)? |  yes  |  |

---


 
 
 #### [MarketplaceThemeResponseBody](#MarketplaceThemeResponseBody)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | themes | [[MarketplaceTheme](#MarketplaceTheme)]? |  yes  |  |
 | page | [PaginationSchema](#PaginationSchema)? |  yes  |  |

---


 
 
 #### [ArrayOfMarketplaceTheme](#ArrayOfMarketplaceTheme)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | body | [[MarketplaceTheme](#MarketplaceTheme)]? |  yes  | An array containing the latest version of theme |

---


 
 
 #### [ThemeCreateRequest](#ThemeCreateRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | src | String? |  yes  | The source URL of the theme file |
 | release | [Release](#Release)? |  yes  |  |

---


 
 
 #### [MarketplaceTheme](#MarketplaceTheme)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  | Theme ID |
 | payment | [PaymentInfo](#PaymentInfo)? |  yes  |  |
 | contact | [ContactInfo](#ContactInfo)? |  yes  |  |
 | industry | [String]? |  yes  | Industries the theme is suitable for |
 | isUpdate | Bool? |  yes  | Indicates if the theme is an update |
 | isDefault | Bool? |  yes  | Indicates if the theme is a default theme |
 | name | String? |  yes  | Theme name |
 | tagline | String? |  yes  | Theme tagline |
 | description | String? |  yes  | Theme description |
 | catalogSize | [CatalogSize](#CatalogSize)? |  yes  |  |
 | images | [MarketplaceThemeImages](#MarketplaceThemeImages)? |  yes  |  |
 | carousel | [[CarouselItem](#CarouselItem)]? |  yes  |  |
 | src | String? |  yes  | Theme source URL |
 | explore | [ExploreInfo](#ExploreInfo)? |  yes  |  |
 | features | [[Feature](#Feature)]? |  yes  |  |
 | highlights | [[Highlight](#Highlight)]? |  yes  |  |
 | variations | [[Variation](#Variation)]? |  yes  |  |
 | documentation | [Documentation](#Documentation)? |  yes  |  |
 | status | String? |  yes  | Theme status |
 | step | Int? |  yes  | Theme step |
 | comments | [Comments](#Comments)? |  yes  |  |
 | release | [Release](#Release)? |  yes  |  |
 | slug | String? |  yes  | Theme slug |
 | organizationId | String? |  yes  | Organization ID |
 | userId | String? |  yes  | User ID |
 | createdAt | String? |  yes  | Theme creation timestamp |
 | updatedAt | String? |  yes  | Theme update timestamp |
 | templateThemeId | String? |  yes  | Template theme ID |

---


 
 
 #### [PaymentInfo](#PaymentInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isPaid | Bool? |  yes  | Indicates if the theme is paid |
 | amount | Double? |  yes  | Amount of payment |

---


 
 
 #### [ContactInfo](#ContactInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | developerContact | [String]? |  yes  | Developer contact information |
 | sellerContact | String? |  yes  | Seller contact information |

---


 
 
 #### [CatalogSize](#CatalogSize)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | min | Int? |  yes  | Minimum catalog size |
 | max | Int? |  yes  | Maximum catalog size |

---


 
 
 #### [MarketplaceThemeImages](#MarketplaceThemeImages)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | desktop | String? |  yes  | Desktop theme image URL |
 | mobile | String? |  yes  | Mobile theme image URL |

---


 
 
 #### [CarouselItem](#CarouselItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | desktop | String? |  yes  | Desktop carousel image URL |
 | mobile | String? |  yes  | Mobile carousel image URL |

---


 
 
 #### [ExploreInfo](#ExploreInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  | Explore feature title |
 | description | String? |  yes  | Explore feature description |

---


 
 
 #### [Feature](#Feature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | category | String? |  yes  | Feature category |
 | list | [[FeatureItem](#FeatureItem)]? |  yes  |  |

---


 
 
 #### [FeatureItem](#FeatureItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | label | String? |  yes  | Feature label |
 | description | String? |  yes  | Feature description |

---


 
 
 #### [Highlight](#Highlight)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  | Highlight title |
 | description | String? |  yes  | Highlight description |
 | image | String? |  yes  | Highlight image URL |

---


 
 
 #### [Variation](#Variation)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  | Variation name |
 | color | String? |  yes  | Variation color |
 | demoUrl | String? |  yes  | Variation demo URL |
 | images | [MarketplaceThemeImages](#MarketplaceThemeImages)? |  yes  |  |

---


 
 
 #### [Documentation](#Documentation)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | notes | String? |  yes  | Documentation notes |
 | url | String? |  yes  | Documentation URL |

---


 
 
 #### [Comments](#Comments)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | developerRemark | String? |  yes  | Developer remark |
 | reviewerFeedback | String? |  yes  | Reviewer feedback |

---


 
 
 #### [Release](#Release)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | version | String? |  yes  | Release version |
 | notes | String? |  yes  | Release notes |

---


 
 
 #### [ThemeSlugResponse](#ThemeSlugResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | theme | [MarketplaceTheme](#MarketplaceTheme)? |  yes  |  |
 | organization | [Organization](#Organization)? |  yes  |  |
 | user | [[ThemeCreator](#ThemeCreator)]? |  yes  | An array of user objects |

---


 
 
 #### [Organization](#Organization)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | meta | [OrganizationMeta](#OrganizationMeta)? |  yes  |  |
 | id | String? |  yes  | The unique identifier of the organization |

---


 
 
 #### [OrganizationMeta](#OrganizationMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ecommPlatformUsed | [String]? |  yes  | List of e-commerce platforms used by the organization |
 | goals | [String]? |  yes  | List of goals for the organization |

---


 
 
 #### [ThemeCreator](#ThemeCreator)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  | Unique identifier for the user |
 | gender | String? |  yes  | Gender of the user (null if not specified) |
 | accountType | String? |  yes  | Type of user account |
 | active | Bool |  no  | Whether the user is active or not |
 | firstName | String? |  yes  | First name of the user |
 | lastName | String? |  yes  | Last name of the user |
 | phoneNumbers | [[PhoneNumber](#PhoneNumber)]? |  yes  | List of phone numbers associated with the user |
 | emails | [[Email](#Email)] |  no  | List of email addresses associated with the user |

---


 
 
 #### [PhoneNumber](#PhoneNumber)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool |  no  | Whether the phone number is active or not |
 | primary | Bool |  no  | Whether the phone number is the primary contact number for the user |
 | verified | Bool |  no  | Whether the phone number has been verified or not |
 | phone | String |  no  | Phone number |
 | countryCode | Int? |  yes  | Country code for the phone number |

---


 
 
 #### [Email](#Email)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool |  no  | Whether the email address is active or not |
 | primary | Bool |  no  | Whether the email address is the primary contact email for the user |
 | verified | Bool |  no  | Whether the email address has been verified or not |
 | email | String |  no  | Email address |

---


 
 
 #### [ThemeAndUserDetailsResponse](#ThemeAndUserDetailsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | themes | [[MarketplaceTheme](#MarketplaceTheme)]? |  yes  | List of themes |
 | user | [[ThemeCreator](#ThemeCreator)]? |  yes  | List of users |

---


 
 
 #### [ThemeRejectionReasons](#ThemeRejectionReasons)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  | The ID of the theme rejection reasons object |
 | message | String? |  yes  | A general message about the rejection reasons |
 | themeId | String |  no  | The ID of the rejected theme |
 | organizationId | String |  no  | The ID of the organization |
 | adminId | String |  no  | The ID of the admin who rejected the theme |
 | userId | String |  no  | The ID of the user who submitted the theme |
 | status | String |  no  | The status of the theme (e.g., rejected) |
 | rejectionReasons | [String: Any] |  no  |  |
 | createdAt | String? |  yes  | The date and time when the theme rejection reasons object was created |
 | updatedAt | String? |  yes  | The date and time when the theme rejection reasons object was last updated |

---


 
 
 #### [RejectionReason](#RejectionReason)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  | The reason for rejecting the theme |

---


 
 
 #### [ThemeReviewRequest](#ThemeReviewRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dynamicProperties | [String: Any]? |  yes  |  |

---


 
 
 #### [UpdateReviewStatusRequest](#UpdateReviewStatusRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String |  no  | The new status of the theme review |

---


 
 
 #### [AllAvailablePageSchema](#AllAvailablePageSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pages | [[AvailablePageSchema](#AvailablePageSchema)]? |  yes  |  |

---


 
 
 #### [PaginationSchema](#PaginationSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | size | Int? |  yes  |  |
 | itemTotal | Int? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | type | String? |  yes  |  |
 | current | Int? |  yes  |  |

---


 
 
 #### [ThemesListingResponseSchema](#ThemesListingResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[ThemesSchema](#ThemesSchema)]? |  yes  |  |
 | page | [PaginationSchema](#PaginationSchema)? |  yes  |  |

---


 
 
 #### [AddThemeRequestSchema](#AddThemeRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | themeId | String? |  yes  |  |

---


 
 
 #### [UpgradableThemeSchema](#UpgradableThemeSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | parentTheme | String? |  yes  |  |
 | appliedTheme | String? |  yes  |  |
 | upgrade | Bool? |  yes  |  |

---


 
 
 #### [FontsSchema](#FontsSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [FontsSchemaItems](#FontsSchemaItems)? |  yes  |  |
 | kind | String? |  yes  |  |

---


 
 
 #### [BlitzkriegApiErrorSchema](#BlitzkriegApiErrorSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [BlitzkriegNotFoundSchema](#BlitzkriegNotFoundSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [BlitzkriegInternalServerErrorSchema](#BlitzkriegInternalServerErrorSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [FontsSchemaItems](#FontsSchemaItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | family | String? |  yes  |  |
 | variants | [String]? |  yes  |  |
 | subsets | [String]? |  yes  |  |
 | version | String? |  yes  |  |
 | lastModified | String? |  yes  |  |
 | files | [FontsSchemaItemsFiles](#FontsSchemaItemsFiles)? |  yes  |  |
 | category | String? |  yes  |  |
 | kind | String? |  yes  |  |

---


 
 
 #### [FontsSchemaItemsFiles](#FontsSchemaItemsFiles)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | regular | String? |  yes  |  |
 | italic | String? |  yes  |  |
 | bold | String? |  yes  |  |

---


 
 
 #### [ThemesSchema](#ThemesSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | application | String? |  yes  |  |
 | applied | Bool? |  yes  |  |
 | customized | Bool? |  yes  |  |
 | published | Bool? |  yes  |  |
 | archived | Bool? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | version | String? |  yes  |  |
 | parentThemeVersion | String? |  yes  |  |
 | parentTheme | String? |  yes  |  |
 | information | [Information](#Information)? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | src | [Src](#Src)? |  yes  |  |
 | assets | [AssetsSchema](#AssetsSchema)? |  yes  |  |
 | availableSections | [[availableSectionSchema](#availableSectionSchema)]? |  yes  |  |
 | styles | [String: Any]? |  yes  |  |
 | config | [Config](#Config)? |  yes  |  |
 | font | [Font](#Font)? |  yes  |  |
 | id | String? |  yes  |  |
 | v | Int? |  yes  |  |
 | colors | [Colors](#Colors)? |  yes  |  |

---


 
 
 #### [availableSectionSchema](#availableSectionSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | blocks | [[Blocks](#Blocks)]? |  yes  |  |
 | name | String? |  yes  |  |
 | label | String? |  yes  |  |
 | props | [[BlocksProps](#BlocksProps)]? |  yes  |  |

---


 
 
 #### [Information](#Information)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | images | [Images](#Images)? |  yes  |  |
 | features | [String]? |  yes  |  |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |

---


 
 
 #### [Images](#Images)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | desktop | [String]? |  yes  |  |
 | android | [String]? |  yes  |  |
 | ios | [String]? |  yes  |  |
 | thumbnail | [String]? |  yes  |  |

---


 
 
 #### [Src](#Src)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | link | String? |  yes  |  |

---


 
 
 #### [AssetsSchema](#AssetsSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | umdJs | [UmdJs](#UmdJs)? |  yes  |  |
 | commonJs | [CommonJs](#CommonJs)? |  yes  |  |
 | css | [Css](#Css)? |  yes  |  |

---


 
 
 #### [UmdJs](#UmdJs)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | link | String? |  yes  |  |
 | links | [String]? |  yes  |  |

---


 
 
 #### [CommonJs](#CommonJs)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | link | String? |  yes  |  |

---


 
 
 #### [Css](#Css)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | link | String? |  yes  |  |
 | links | [String]? |  yes  |  |

---


 
 
 #### [Sections](#Sections)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | attributes | String? |  yes  |  |

---


 
 
 #### [Config](#Config)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | preset | [Preset](#Preset)? |  yes  |  |
 | globalSchema | [GlobalSchema](#GlobalSchema)? |  yes  |  |
 | current | String? |  yes  |  |
 | list | [[ListSchemaItem](#ListSchemaItem)]? |  yes  |  |

---


 
 
 #### [Preset](#Preset)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pages | [[AvailablePageSchema](#AvailablePageSchema)]? |  yes  |  |

---


 
 
 #### [GlobalSchema](#GlobalSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | props | [[GlobalSchemaProps](#GlobalSchemaProps)]? |  yes  |  |

---


 
 
 #### [ListSchemaItem](#ListSchemaItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | globalConfig | [String: Any]? |  yes  |  |
 | page | [[ConfigPage](#ConfigPage)]? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [Colors](#Colors)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | bgColor | String? |  yes  |  |
 | primaryColor | String? |  yes  |  |
 | secondaryColor | String? |  yes  |  |
 | accentColor | String? |  yes  |  |
 | linkColor | String? |  yes  |  |
 | buttonSecondaryColor | String? |  yes  |  |

---


 
 
 #### [Custom](#Custom)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | props | [String: Any]? |  yes  |  |

---


 
 
 #### [ConfigPage](#ConfigPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | settings | [String: Any]? |  yes  |  |
 | page | String? |  yes  |  |

---


 
 
 #### [Font](#Font)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | family | String? |  yes  |  |
 | variants | [Variants](#Variants)? |  yes  |  |

---


 
 
 #### [Variants](#Variants)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | medium | [Medium](#Medium)? |  yes  |  |
 | semiBold | [SemiBold](#SemiBold)? |  yes  |  |
 | bold | [Bold](#Bold)? |  yes  |  |
 | light | [Light](#Light)? |  yes  |  |
 | regular | [Regular](#Regular)? |  yes  |  |

---


 
 
 #### [Medium](#Medium)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | file | String? |  yes  |  |

---


 
 
 #### [SemiBold](#SemiBold)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | file | String? |  yes  |  |

---


 
 
 #### [Bold](#Bold)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | file | String? |  yes  |  |

---


 
 
 #### [Light](#Light)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | file | String? |  yes  |  |

---


 
 
 #### [Regular](#Regular)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | file | String? |  yes  |  |

---


 
 
 #### [Blocks](#Blocks)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | name | String? |  yes  |  |
 | props | [[BlocksProps](#BlocksProps)]? |  yes  |  |

---


 
 
 #### [GlobalSchemaProps](#GlobalSchemaProps)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | label | String? |  yes  |  |
 | type | String? |  yes  |  |
 | category | String? |  yes  |  |

---


 
 
 #### [BlocksProps](#BlocksProps)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | label | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [ApplyThemeRequestV2](#ApplyThemeRequestV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | marketplaceThemeId | String |  no  | The ID of the theme to be applied |

---


 
 
 #### [ApplyThemeResponseV2](#ApplyThemeResponseV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | font | [FontV2](#FontV2)? |  yes  |  |
 | config | [ConfigV2](#ConfigV2)? |  yes  |  |
 | applied | Bool? |  yes  | Whether the theme has been applied or not |
 | isPrivate | Bool? |  yes  | Whether the theme is private or not |
 | tags | [String]? |  yes  | An array of tags associated with the theme |
 | id | String? |  yes  | The unique identifier of the theme |
 | applicationId | String? |  yes  | The ID of the application |
 | marketplaceThemeId | String? |  yes  | The ID of the theme in the marketplace |
 | meta | [MetaV2](#MetaV2)? |  yes  |  |
 | name | String? |  yes  | The name of the theme |
 | templateThemeId | String? |  yes  | The ID of the template theme |
 | version | String? |  yes  | The version of the theme |
 | styles | [String: Any]? |  yes  | The styles associated with the theme |
 | createdAt | String? |  yes  | The creation timestamp of the theme |
 | updatedAt | String? |  yes  | The last update timestamp of the theme |

---


 
 
 #### [AllThemesApplicationResponseV2](#AllThemesApplicationResponseV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | font | [FontV2](#FontV2)? |  yes  |  |
 | config | [ConfigV2](#ConfigV2)? |  yes  |  |
 | applied | Bool? |  yes  | Whether the theme has been applied or not |
 | isPrivate | Bool? |  yes  | Whether the theme is private or not |
 | tags | [String]? |  yes  | An array of tags associated with the theme |
 | id | String? |  yes  | The unique identifier of the theme |
 | applicationId | String? |  yes  | The ID of the application |
 | marketplaceThemeId | String? |  yes  | The ID of the theme in the marketplace |
 | meta | [MetaV2](#MetaV2)? |  yes  |  |
 | name | String? |  yes  | The name of the theme |
 | templateThemeId | String? |  yes  | The ID of the template theme |
 | version | String? |  yes  | The version of the theme |
 | styles | [String: Any]? |  yes  | The styles associated with the theme |
 | createdAt | String? |  yes  | The creation timestamp of the theme |
 | updatedAt | String? |  yes  | The last update timestamp of the theme |
 | assets | [AssetsV2](#AssetsV2)? |  yes  |  |
 | availableSections | [[SectionItem](#SectionItem)]? |  yes  | Available sections information |

---


 
 
 #### [ThemeUpgradableResponseV2](#ThemeUpgradableResponseV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | upgrade | Bool? |  yes  | Indicates if the theme is upgradable or not |
 | versions | [ThemeVersionsV2](#ThemeVersionsV2)? |  yes  |  |
 | message | String? |  yes  | A message describing the theme upgrade status |

---


 
 
 #### [UpdateThemeNameRequestBodyV2](#UpdateThemeNameRequestBodyV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  | The new name of the theme. |

---


 
 
 #### [UpdateThemeRequestBodyV2](#UpdateThemeRequestBodyV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | config | [ConfigV2](#ConfigV2)? |  yes  |  |
 | font | [FontV2](#FontV2)? |  yes  |  |

---


 
 
 #### [FontV2](#FontV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | variants | [FontVariantsV2](#FontVariantsV2) |  no  |  |
 | family | String |  no  | The font family |

---


 
 
 #### [FontVariantsV2](#FontVariantsV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | light | [FontVariantV2](#FontVariantV2)? |  yes  |  |
 | regular | [FontVariantV2](#FontVariantV2)? |  yes  |  |
 | medium | [FontVariantV2](#FontVariantV2)? |  yes  |  |
 | semiBold | [FontVariantV2](#FontVariantV2)? |  yes  |  |
 | bold | [FontVariantV2](#FontVariantV2)? |  yes  |  |

---


 
 
 #### [FontVariantV2](#FontVariantV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  | The name of the font variant |
 | file | String |  no  | The URL of the font file |

---


 
 
 #### [ConfigV2](#ConfigV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | current | String |  no  | The current configuration |
 | list | [[ConfigurationV2](#ConfigurationV2)] |  no  | A list of configurations |
 | globalSchema | [GlobalSchemaV2](#GlobalSchemaV2)? |  yes  |  |
 | preset | [PresetV2](#PresetV2)? |  yes  |  |

---


 
 
 #### [ConfigurationV2](#ConfigurationV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  | The name of the configuration |
 | globalConfig | [GlobalConfigV2](#GlobalConfigV2)? |  yes  |  |
 | custom | [CustomConfigV2](#CustomConfigV2)? |  yes  |  |
 | page | [String]? |  yes  | An array of pages |

---


 
 
 #### [GlobalConfigV2](#GlobalConfigV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | statics | [StaticConfigV2](#StaticConfigV2)? |  yes  |  |
 | auth | [AuthConfigV2](#AuthConfigV2)? |  yes  |  |
 | palette | [PaletteConfigV2](#PaletteConfigV2)? |  yes  |  |

---


 
 
 #### [StaticConfigV2](#StaticConfigV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | props | [StaticPropsV2](#StaticPropsV2)? |  yes  |  |

---


 
 
 #### [AuthConfigV2](#AuthConfigV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | showHeaderAuth | Bool? |  yes  | Whether to show header authentication or not |
 | showFooterAuth | Bool? |  yes  | Whether to show footer authentication or not |

---


 
 
 #### [PaletteConfigV2](#PaletteConfigV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | generalSetting | [GeneralSettingV2](#GeneralSettingV2)? |  yes  |  |
 | advanceSetting | [AdvanceSettingV2](#AdvanceSettingV2)? |  yes  |  |

---


 
 
 #### [CustomConfigV2](#CustomConfigV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | props | [CustomPropsV2](#CustomPropsV2)? |  yes  |  |

---


 
 
 #### [MetaV2](#MetaV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | payment | [PaymentV2](#PaymentV2)? |  yes  |  |
 | description | String? |  yes  | The description of the theme |
 | industry | [String]? |  yes  | An array of industries associated with the theme |
 | release | [ReleaseV2](#ReleaseV2)? |  yes  |  |
 | images | [ImagesV2](#ImagesV2)? |  yes  |  |
 | slug | String? |  yes  | The slug of the theme |
 | name | String? |  yes  | The name of the theme |

---


 
 
 #### [PaymentV2](#PaymentV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isPaid | Bool? |  yes  | Whether the theme is paid or not |
 | amount | Double? |  yes  | The amount of the theme |

---


 
 
 #### [ReleaseV2](#ReleaseV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | notes | String? |  yes  | The release notes of the theme |
 | version | String? |  yes  | The version of the theme |

---


 
 
 #### [ImagesV2](#ImagesV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | desktop | String? |  yes  | The URL of the desktop image |
 | mobile | String? |  yes  | The URL of the mobile image |

---


 
 
 #### [StaticPropsV2](#StaticPropsV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | colors | [ColorsV2](#ColorsV2)? |  yes  |  |
 | auth | [AuthConfigV2](#AuthConfigV2)? |  yes  |  |

---


 
 
 #### [ColorsV2](#ColorsV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | primaryColor | String? |  yes  | The primary color |
 | secondaryColor | String? |  yes  | The secondary color |
 | accentColor | String? |  yes  | The accent color |
 | linkColor | String? |  yes  | The link color |
 | buttonSecondaryColor | String? |  yes  | The secondary button color |
 | bgColor | String? |  yes  | The background color |

---


 
 
 #### [GeneralSettingV2](#GeneralSettingV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | theme | [ThemeSettingV2](#ThemeSettingV2)? |  yes  |  |
 | text | [TextSettingV2](#TextSettingV2)? |  yes  |  |
 | button | [ButtonSettingV2](#ButtonSettingV2)? |  yes  |  |
 | saleDiscount | [SaleDiscountSettingV2](#SaleDiscountSettingV2)? |  yes  |  |
 | header | [HeaderSettingV2](#HeaderSettingV2)? |  yes  |  |
 | footer | [FooterSettingV2](#FooterSettingV2)? |  yes  |  |

---


 
 
 #### [AdvanceSettingV2](#AdvanceSettingV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | overlayPopup | [OverlayPopupSettingV2](#OverlayPopupSettingV2)? |  yes  |  |
 | dividerStrokeHighlight | [DividerStrokeHighlightSettingV2](#DividerStrokeHighlightSettingV2)? |  yes  |  |
 | userAlerts | [UserAlertsSettingV2](#UserAlertsSettingV2)? |  yes  |  |

---


 
 
 #### [ThemeSettingV2](#ThemeSettingV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pageBackground | String? |  yes  | The page background color |
 | themeAccent | String? |  yes  | The theme accent color |

---


 
 
 #### [TextSettingV2](#TextSettingV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | textHeading | String? |  yes  | The text heading color |
 | textBody | String? |  yes  | The text body color |
 | textLabel | String? |  yes  | The text label color |
 | textSecondary | String? |  yes  | The secondary text color |

---


 
 
 #### [ButtonSettingV2](#ButtonSettingV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | buttonPrimary | String? |  yes  | The primary button color |
 | buttonSecondary | String? |  yes  | The secondary button color |
 | buttonLink | String? |  yes  | The button link color |

---


 
 
 #### [SaleDiscountSettingV2](#SaleDiscountSettingV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | saleBadgeBackground | String? |  yes  | The sale badge background color |
 | saleBadgeText | String? |  yes  | The sale badge text color |
 | saleDiscountText | String? |  yes  | The sale discount text color |
 | saleTimer | String? |  yes  | The sale timer color |

---


 
 
 #### [HeaderSettingV2](#HeaderSettingV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | headerBackground | String? |  yes  | The header background color |
 | headerNav | String? |  yes  | The header navigation color |
 | headerIcon | String? |  yes  | The header icon color |

---


 
 
 #### [FooterSettingV2](#FooterSettingV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | footerBackground | String? |  yes  | The footer background color |
 | footerBottomBackground | String? |  yes  | The footer bottom background color |
 | footerHeadingText | String? |  yes  | The footer heading text color |
 | footerBodyText | String? |  yes  | The footer body text color |
 | footerIcon | String? |  yes  | The footer icon color |

---


 
 
 #### [OverlayPopupSettingV2](#OverlayPopupSettingV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dialogBackgroung | String? |  yes  | The dialog background color |
 | overlay | String? |  yes  | The overlay color |

---


 
 
 #### [DividerStrokeHighlightSettingV2](#DividerStrokeHighlightSettingV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dividerStrokes | String? |  yes  | The divider strokes color |
 | highlight | String? |  yes  | The highlight color |

---


 
 
 #### [UserAlertsSettingV2](#UserAlertsSettingV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | successBackground | String? |  yes  | The success background color |
 | successText | String? |  yes  | The success text color |
 | errorBackground | String? |  yes  | The error background color |
 | errorText | String? |  yes  | The error text color |
 | infoBackground | String? |  yes  | The info background color |
 | infoText | String? |  yes  | The info text color |

---


 
 
 #### [CustomPropsV2](#CustomPropsV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | headerBgColor | String? |  yes  | The header background color |
 | headerTextColor | String? |  yes  | The header text color |
 | headerBorderColor | String? |  yes  | The header border color |
 | headerIconColor | String? |  yes  | The header icon color |
 | headerCartNotificationBgColor | String? |  yes  | The header cart notification background color |
 | headerCartNotificationTextColor | String? |  yes  | The header cart notification text color |
 | headerNavHoverColor | String? |  yes  | The header navigation hover color |
 | buttonPrimaryColor | String? |  yes  | The primary button color |
 | buttonPrimaryLabelColor | String? |  yes  | The primary button label color |
 | buttonAddToCartColor | String? |  yes  | The add to cart button color |
 | buttonAddToCartLabelColor | String? |  yes  | The add to cart button label color |
 | buttonSecondaryColor | String? |  yes  | The secondary button color |
 | buttonSecondaryLabelColor | String? |  yes  | The secondary button label color |
 | buttonTertiaryColor | String? |  yes  | The tertiary button color |
 | buttonTertiaryLabelColor | String? |  yes  | The tertiary button label color |
 | buttonTertiaryHoverColor | String? |  yes  | The tertiary button hover color |
 | buttonTertiaryHoverTextColor | String? |  yes  | The tertiary button hover text color |
 | textHeadingLinkColor | String? |  yes  | The text heading link color |
 | textBodyColor | String? |  yes  | The text body color |
 | textPriceColor | String? |  yes  | The text price color |
 | textSalePriceColor | String? |  yes  | The text sale price color |
 | textStrikethroughPriceColor | String? |  yes  | The text strikethrough price color |
 | textDiscountColor | String? |  yes  | The text discount color |
 | footerBgColor | String? |  yes  | The footer background color |
 | footerTextColor | String? |  yes  | The footer text color |
 | footerBorderColor | String? |  yes  | The footer border color |
 | footerNavHoverColor | String? |  yes  | The footer navigation hover color |
 | disableCart | Bool? |  yes  | Whether to disable the cart or not |
 | isMenuBelowLogo | Bool? |  yes  | Whether the menu is below the logo or not |
 | menuPosition | String? |  yes  | The position of the menu |

---


 
 
 #### [GlobalSchemaV2](#GlobalSchemaV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | props | [[PropV2](#PropV2)]? |  yes  |  |

---


 
 
 #### [PropV2](#PropV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  | The type of the property |
 | category | String? |  yes  | The category of the property |
 | id | String? |  yes  | The ID of the property |
 | label | String? |  yes  | The label of the property |
 | info | String? |  yes  | Additional information about the property |

---


 
 
 #### [AssetsV2](#AssetsV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | umdJs | [UMDJs](#UMDJs)? |  yes  |  |
 | commonJs | [CommonJS](#CommonJS)? |  yes  |  |
 | css | [CSS](#CSS)? |  yes  |  |

---


 
 
 #### [UMDJs](#UMDJs)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | links | [String]? |  yes  |  |

---


 
 
 #### [CommonJS](#CommonJS)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | link | String? |  yes  |  |

---


 
 
 #### [CSS](#CSS)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | links | [String]? |  yes  |  |

---


 
 
 #### [SectionItem](#SectionItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | props | [[String: Any]]? |  yes  |  |
 | blocks | [[String: Any]]? |  yes  | Blocks |
 | name | String? |  yes  | Name of the section |
 | label | String? |  yes  | Label for the section |

---


 
 
 #### [PresetV2](#PresetV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pages | [[PageV2](#PageV2)]? |  yes  |  |

---


 
 
 #### [PageV2](#PageV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sections | [[SectionV2](#SectionV2)]? |  yes  |  |
 | value | String? |  yes  | The value of the page. |

---


 
 
 #### [SectionV2](#SectionV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | blocks | [[BlockV2](#BlockV2)]? |  yes  |  |
 | predicate | [PredicateV2](#PredicateV2)? |  yes  |  |
 | name | String? |  yes  | The name of the section. |
 | props | [SectionPropsV2](#SectionPropsV2)? |  yes  |  |
 | preset | [SectionPresetV2](#SectionPresetV2)? |  yes  |  |

---


 
 
 #### [BlockV2](#BlockV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  | The type of the block. |
 | name | String? |  yes  | The name of the block. |
 | props | [BlockPropsV2](#BlockPropsV2)? |  yes  |  |

---


 
 
 #### [PredicateV2](#PredicateV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | screen | [ScreenV2](#ScreenV2)? |  yes  |  |
 | user | [UserV2](#UserV2)? |  yes  |  |
 | route | [RouteV2](#RouteV2)? |  yes  |  |

---


 
 
 #### [ScreenV2](#ScreenV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mobile | Bool? |  yes  | True if the screen is a mobile device. |
 | desktop | Bool? |  yes  | True if the screen is a desktop device. |
 | tablet | Bool? |  yes  | True if the screen is a tablet device. |

---


 
 
 #### [UserV2](#UserV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | authenticated | Bool? |  yes  | True if the user is authenticated. |
 | anonymous | Bool? |  yes  | True if the user is anonymous. |

---


 
 
 #### [RouteV2](#RouteV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | selected | String? |  yes  | The selected route. |
 | exactUrl | String? |  yes  | The exact URL of the route. |

---


 
 
 #### [SectionPropsV2](#SectionPropsV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | [TextPropV2](#TextPropV2)? |  yes  |  |
 | itemMargin | [TextPropV2](#TextPropV2)? |  yes  |  |
 | autoplay | [CheckboxPropV2](#CheckboxPropV2)? |  yes  |  |
 | slideInterval | [RangePropV2](#RangePropV2)? |  yes  |  |

---


 
 
 #### [SectionPresetV2](#SectionPresetV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | blocks | [[BlockV2](#BlockV2)]? |  yes  |  |

---


 
 
 #### [BlockPropsV2](#BlockPropsV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | image | [ImagePickerPropV2](#ImagePickerPropV2)? |  yes  |  |
 | slideLink | [UrlPropV2](#UrlPropV2)? |  yes  |  |

---


 
 
 #### [TextPropV2](#TextPropV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String? |  yes  | The value of the text property. |
 | type | String? |  yes  | The type of the property. |

---


 
 
 #### [CheckboxPropV2](#CheckboxPropV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | Bool? |  yes  | The value of the checkbox property. |
 | type | String? |  yes  | The type of the property. |

---


 
 
 #### [RangePropV2](#RangePropV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | Int? |  yes  | The value of the range property. |
 | type | String? |  yes  | The type of the property. |

---


 
 
 #### [ImagePickerPropV2](#ImagePickerPropV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  | The type of the property. |
 | value | String? |  yes  | The value of the image picker property. |

---


 
 
 #### [UrlPropV2](#UrlPropV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  | The type of the property. |
 | value | String? |  yes  | The value of the URL property. |

---


 
 
 #### [ThemeVersionsV2](#ThemeVersionsV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | parentTheme | String? |  yes  | The version of the parent theme |
 | appliedTheme | String? |  yes  | The version of the applied theme |

---



