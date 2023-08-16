



##### [Back to Partner docs](./README.md)

## Theme Methods
Responsible for partner theme submission
* [getAllPages](#getallpages)
* [createPage](#createpage)
* [updateMultiplePages](#updatemultiplepages)
* [getPage](#getpage)
* [updatePage](#updatepage)
* [deletePage](#deletepage)
* [getApplicationThemes](#getapplicationthemes)
* [getThemeById](#getthemebyid)
* [updateTheme](#updatetheme)
* [deleteTheme](#deletetheme)
* [getOrganizationThemes](#getorganizationthemes)
* [getOrganizationThemeDetails](#getorganizationthemedetails)
* [updateDraftTheme](#updatedrafttheme)
* [submitOrganizationTheme](#submitorganizationtheme)
* [deleteOrganizationTheme](#deleteorganizationtheme)
* [getLatestVersionOfThemeBySlug](#getlatestversionofthemebyslug)
* [createNewThemeInOrganization](#createnewthemeinorganization)
* [getThemeRejectionReasons](#getthemerejectionreasons)
* [getThemeVersions](#getthemeversions)



## Methods with example and description


#### getAllPages
Get all pages of a theme




```swift
partnerClient.theme.getAllPages(themeId: themeId, organizationId: organizationId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| themeId | String | yes | ID of the theme to be retrieved |   
| organizationId | String | yes | Organization ID |  



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
        "path": "product/:slug/reviews",
        "type": "system",
        "seo": {
          "title": "",
          "description": "",
          "_id": "60ab5ca6d572fed64294eb24"
        },
        "_id": "60ab5ca6d572fed64294eb25",
        "sections_meta": [],
        "value": "product-reviews",
        "text": "Product Reviews",
        "theme": "5fb3ee4194a5181feeeba8e5",
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
        "path": "product/:slug/add-review",
        "type": "system",
        "seo": {
          "title": "",
          "description": "",
          "_id": "60ab5ca6d572fed64294eb26"
        },
        "_id": "60ab5ca6d572fed64294eb27",
        "sections_meta": [],
        "value": "add-product-review",
        "text": "Add Product Review",
        "theme": "5fb3ee4194a5181feeeba8e5",
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


#### createPage
Create a page 




```swift
partnerClient.theme.createPage(themeId: themeId, organizationId: organizationId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| themeId | String | yes | ID of the theme |   
| organizationId | String | yes | Organization ID |  
| body | AvailablePageSchema | yes | Request body |


Use this API to create a page for a theme by its ID.

*Returned Response:*




[AvailablePageSchema](#AvailablePageSchema)

Success. Returns the page of the theme. Refer `AvailablePageSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; page</i></summary>

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


#### updateMultiplePages
Update multiple pages of a theme




```swift
partnerClient.theme.updateMultiplePages(themeId: themeId, organizationId: organizationId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| themeId | String | yes | ID of the theme to be retrieved |   
| organizationId | String | yes | Organization ID |  
| body | AllAvailablePageSchema | yes | Request body |


Use this API to update multiple pages of a theme by its ID.

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
        "path": "product/:slug/reviews",
        "type": "system",
        "seo": {
          "title": "",
          "description": "",
          "_id": "60ab5ca6d572fed64294eb24"
        },
        "_id": "60ab5ca6d572fed64294eb25",
        "sections_meta": [],
        "value": "product-reviews",
        "text": "Product Reviews",
        "theme": "5fb3ee4194a5181feeeba8e5",
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
        "path": "product/:slug/add-review",
        "type": "system",
        "seo": {
          "title": "",
          "description": "",
          "_id": "60ab5ca6d572fed64294eb26"
        },
        "_id": "60ab5ca6d572fed64294eb27",
        "sections_meta": [],
        "value": "add-product-review",
        "text": "Add Product Review",
        "theme": "5fb3ee4194a5181feeeba8e5",
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
partnerClient.theme.getPage(themeId: themeId, pageValue: pageValue, organizationId: organizationId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| themeId | String | yes | ID of the theme to be retrieved |   
| pageValue | String | yes | Value of the page to be retrieved |   
| organizationId | String | yes | Organization ID |  



Use this API to retrieve a page of a theme.

*Returned Response:*




[AvailablePageSchema](#AvailablePageSchema)

Success. Returns an object of the page.  Refer `AvailablePageSchema` for more details.




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


#### updatePage
Updates a page 




```swift
partnerClient.theme.updatePage(themeId: themeId, pageValue: pageValue, organizationId: organizationId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| themeId | String | yes | ID of the theme |   
| pageValue | String | yes | Value of the page to be updated |   
| organizationId | String | yes | Organization ID |  
| body | AvailablePageSchema | yes | Request body |


Use this API to update a page for a theme by its ID.

*Returned Response:*




[AvailablePageSchema](#AvailablePageSchema)

Success. Returns a the page of the theme. Refer `AvailablePageSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; page</i></summary>

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


#### deletePage
Deletes a page 




```swift
partnerClient.theme.deletePage(themeId: themeId, pageValue: pageValue, organizationId: organizationId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| themeId | String | yes | ID of the theme |   
| pageValue | String | yes | Value of the page to be updated |   
| organizationId | String | yes | Organization ID |  



Use this API to delete a page for a theme by its ID and page_value.

*Returned Response:*




[AvailablePageSchema](#AvailablePageSchema)

Success. Returns a the page of the theme. Refer `AvailablePageSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; page</i></summary>

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


#### getApplicationThemes
Get all the themes for a specific application




```swift
partnerClient.theme.getApplicationThemes(organizationId: organizationId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| organizationId | String | yes | Organization ID |  



Use this API to get list of theme

*Returned Response:*




[[ThemesSchema]](#[ThemesSchema])

The list of themes for the application was fetched successfully.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; example1</i></summary>

```json
{
  "value": [
    {
      "_id": "64be4423bc7b28003211322e",
      "applied": false,
      "is_private": false,
      "tags": [],
      "application_id": "6487ea376e1442284917c44e",
      "marketplace_theme_id": "64be1f4cceb549012e93d5f4",
      "meta": {
        "payment": {
          "is_paid": false,
          "amount": 0
        },
        "description": "Indulge in the epitome of luxury with our expertly crafted theme, showcasing a high-end aesthetic that exudes elegance. Designed with meticulous attention to detail, our features are tailored to elevate your products and amplify your brand identity.",
        "industry": [
          "Arts and crafts",
          "Baby and kids",
          "Books, music, and video"
        ],
        "release": {
          "notes": "<p>Emerge release notes. Fyndx1 theme submission.</p>"
        },
        "images": {
          "desktop": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/McHjwol_h-images_desktop.webp",
          "mobile": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/bq6gXrmVE-images_mobile.webp"
        },
        "slug": "emerge"
      },
      "name": "Emerge",
      "template_theme_id": "64be1fdc2139f66b3ca2e94d",
      "version": "1.0.153",
      "styles": {},
      "created_at": "2023-07-24T09:28:03.845Z",
      "updated_at": "2023-07-31T12:14:13.097Z",
      "theme_type": "vue2",
      "assets": {
        "umd_js": {
          "links": [
            "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_themeBundle.umd.min.8.js",
            "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_themeBundle.umd.min.cart.js",
            "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_themeBundle.umd.min.extras.js",
            "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_themeBundle.umd.min.products-listing.js",
            "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_themeBundle.umd.min.products.js",
            "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_themeBundle.umd.min.profile.js",
            "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_themeBundle.umd.min.vendors_products-listing.js",
            "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_themeBundle.umd.min.vendors_products.js",
            "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_themeBundle.umd.min.js"
          ],
          "link": ""
        },
        "common_js": {
          "link": "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_themeBundle.common.js"
        },
        "css": {
          "links": [
            "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_cart.1b038cd83e502f2d58bc.css",
            "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_extras.f8a9789ae6a06b0bd503.css",
            "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_products-listing.1d639747568baee211ba.css",
            "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_products.c1f151d12b3f704fe028.css",
            "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_profile.c9e6a92612e4b423dbd7.css",
            "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_themeBundle.css",
            "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_vendors_products-listing.c8fe85761d60286348e3.css"
          ],
          "link": ""
        }
      },
      "font": {
        "variants": {
          "light": {
            "name": "300",
            "file": "https://fonts.gstatic.com/s/poppins/v9/pxiByp8kv8JHgFVrLDz8V1tvFP-KUEg.ttf"
          },
          "regular": {
            "name": "regular",
            "file": "https://fonts.gstatic.com/s/poppins/v9/pxiEyp8kv8JHgFVrFJDUc1NECPY.ttf"
          },
          "medium": {
            "name": "500",
            "file": "https://fonts.gstatic.com/s/poppins/v9/pxiByp8kv8JHgFVrLGT9V1tvFP-KUEg.ttf"
          },
          "semi_bold": {
            "name": "600",
            "file": "https://fonts.gstatic.com/s/poppins/v9/pxiByp8kv8JHgFVrLEj6V1tvFP-KUEg.ttf"
          },
          "bold": {
            "name": "700",
            "file": "https://fonts.gstatic.com/s/poppins/v9/pxiByp8kv8JHgFVrLCz7V1tvFP-KUEg.ttf"
          }
        },
        "family": "Poppins"
      },
      "config": {
        "current": "Default",
        "list": [
          {
            "name": "Default",
            "global_config": {
              "static": {
                "props": {
                  "colors": {
                    "primary_color": "#000000",
                    "secondary_color": "#000000",
                    "accent_color": "#000000",
                    "link_color": "#4499FF",
                    "button_secondary_color": "#000000",
                    "bg_color": "#F8F8F8"
                  },
                  "auth": {
                    "show_header_auth": false,
                    "show_footer_auth": false
                  },
                  "palette": {
                    "general_setting": {
                      "theme": {
                        "page_background": "#F3F3ED",
                        "theme_accent": "#E1D0C8"
                      },
                      "text": {
                        "text_heading": "#26201A",
                        "text_body": "#3C3131",
                        "text_label": "#7D7676",
                        "text_secondary": "#9C9C9C"
                      },
                      "button": {
                        "button_primary": "#4E3F09",
                        "button_secondary": "#FFFFFF",
                        "button_link": "#B1655B"
                      },
                      "sale_discount": {
                        "sale_badge_background": "#FFFFFF",
                        "sale_badge_text": "#1C958F",
                        "sale_discount_text": "#1C958F",
                        "sale_timer": "#994449"
                      },
                      "header": {
                        "header_background": "#F3F3ED",
                        "header_nav": "#261A1A",
                        "header_icon": "#261A1A"
                      },
                      "footer": {
                        "footer_background": "#2C231E",
                        "footer_bottom_background": "#231812",
                        "footer_heading_text": "#FFFFFF",
                        "footer_body_text": "#FFFFFF",
                        "footer_icon": "#FFFFFF"
                      }
                    },
                    "advance_setting": {
                      "overlay_popup": {
                        "dialog_backgroung": "#FFFFFF",
                        "overlay": "#14130E"
                      },
                      "divider_stroke_highlight": {
                        "divider_strokes": "#D4D1D1",
                        "highlight": "#EDECE9"
                      },
                      "user_alerts": {
                        "success_background": "#C2DBC9",
                        "success_text": "#1C958F",
                        "error_background": "#E6D5D5",
                        "error_text": "#B24141",
                        "info_background": "#EBD3BC",
                        "info_text": "#D28F51"
                      }
                    }
                  },
                  "extension": {
                    "header_top": [],
                    "header_bottom": [],
                    "footer_top": [],
                    "footer_bottom": []
                  }
                }
              },
              "custom": {
                "props": {
                  "header_bg_color": "#ffffff",
                  "header_text_color": "#000000",
                  "header_border_color": "#e1e1e1",
                  "header_icon_color": "#000000",
                  "header_cart_notification_bg_color": "#e8a76c",
                  "header_cart_notification_text_color": "#ffffff",
                  "header_nav_hover_color": "#999999",
                  "button_primary_color": "#ffffff",
                  "button_primary_label_color": "#000000",
                  "button_add_to_cart_color": "#000000",
                  "button_add_to_cart_label_color": "#ffffff",
                  "button_secondary_color": "#000000",
                  "button_secondary_label_color": "#ffffff",
                  "button_tertiary_color": "#000000",
                  "button_tertiary_label_color": "#000000",
                  "button_tertiary_hover_color": "#000000",
                  "button_tertiary_hover_text_color": "#ffffff",
                  "text_heading_link_color": "#000000",
                  "text_body_color": "#000000",
                  "text_price_color": "#000000",
                  "text_sale_price_color": "#fb406b",
                  "text_strikethrough_price_color": "#9b9b9b",
                  "text_discount_color": "#ee478d",
                  "footer_bg_color": "#ffffff",
                  "footer_text_color": "#999999",
                  "footer_border_color": "#e1e1e1",
                  "footer_nav_hover_color": "#000000",
                  "disable_cart": false,
                  "is_menu_below_logo": false,
                  "menu_position": "left"
                }
              }
            },
            "page": []
          },
          {
            "name": "Dark",
            "global_config": {
              "static": {
                "props": {
                  "colors": {
                    "primary_color": "#000000",
                    "secondary_color": "#000000",
                    "accent_color": "#000000",
                    "link_color": "#4499FF",
                    "button_secondary_color": "#000000",
                    "bg_color": "#F8F8F8"
                  },
                  "auth": {
                    "show_header_auth": false,
                    "show_footer_auth": false
                  },
                  "palette": {
                    "general_setting": {
                      "theme": {
                        "page_background": "#F3F3ED",
                        "theme_accent": "#E1D0C8"
                      },
                      "text": {
                        "text_heading": "#26201A",
                        "text_body": "#3C3131",
                        "text_label": "#7D7676",
                        "text_secondary": "#9C9C9C"
                      },
                      "button": {
                        "button_primary": "#4E3F09",
                        "button_secondary": "#FFFFFF",
                        "button_link": "#B1655B"
                      },
                      "sale_discount": {
                        "sale_badge_background": "#FFFFFF",
                        "sale_badge_text": "#1C958F",
                        "sale_discount_text": "#1C958F",
                        "sale_timer": "#994449"
                      },
                      "header": {
                        "header_background": "#F3F3ED",
                        "header_nav": "#261A1A",
                        "header_icon": "#261A1A"
                      },
                      "footer": {
                        "footer_background": "#2C231E",
                        "footer_bottom_background": "#231812",
                        "footer_heading_text": "#FFFFFF",
                        "footer_body_text": "#FFFFFF",
                        "footer_icon": "#FFFFFF"
                      }
                    },
                    "advance_setting": {
                      "overlay_popup": {
                        "dialog_backgroung": "#FFFFFF",
                        "overlay": "#14130E"
                      },
                      "divider_stroke_highlight": {
                        "divider_strokes": "#D4D1D1",
                        "highlight": "#EDECE9"
                      },
                      "user_alerts": {
                        "success_background": "#C2DBC9",
                        "success_text": "#1C958F",
                        "error_background": "#E6D5D5",
                        "error_text": "#B24141",
                        "info_background": "#EBD3BC",
                        "info_text": "#D28F51"
                      }
                    }
                  },
                  "extension": {
                    "header_top": [],
                    "header_bottom": [],
                    "footer_top": [],
                    "footer_bottom": []
                  }
                }
              },
              "custom": {
                "props": {
                  "header_bg_color": "#2e3032",
                  "header_text_color": "#ffffff",
                  "header_border_color": "#FFFFFF",
                  "header_icon_color": "#ffffff",
                  "header_cart_notification_bg_color": "#FFFFFF",
                  "header_cart_notification_text_color": "#2e3032",
                  "header_nav_hover_color": "#000000",
                  "button_primary_color": "#000000",
                  "button_primary_label_color": "#ffffff",
                  "button_add_to_cart_color": "#000000",
                  "button_add_to_cart_label_color": "#ffffff",
                  "button_secondary_color": "#000000",
                  "button_secondary_label_color": "#ffffff",
                  "button_tertiary_color": "#000000",
                  "button_tertiary_label_color": "#000000",
                  "button_tertiary_hover_color": "#000000",
                  "button_tertiary_hover_text_color": "#ffffff",
                  "text_heading_link_color": "#000000",
                  "text_body_color": "#000000",
                  "text_price_color": "#000000",
                  "text_sale_price_color": "#fb406b",
                  "text_strikethrough_price_color": "#9b9b9b",
                  "text_discount_color": "#ee478d",
                  "footer_bg_color": "#2e3032",
                  "footer_text_color": "#ffffff",
                  "footer_border_color": "#FFFFFF",
                  "footer_nav_hover_color": "#ffffff"
                }
              }
            },
            "page": []
          },
          {
            "name": "Blue",
            "global_config": {
              "static": {
                "props": {
                  "colors": {
                    "primary_color": "#000000",
                    "secondary_color": "#000000",
                    "accent_color": "#000000",
                    "link_color": "#4499FF",
                    "button_secondary_color": "#000000",
                    "bg_color": "#F8F8F8"
                  },
                  "auth": {
                    "show_header_auth": false,
                    "show_footer_auth": false
                  },
                  "palette": {
                    "general_setting": {
                      "theme": {
                        "page_background": "#F3F3ED",
                        "theme_accent": "#E1D0C8"
                      },
                      "text": {
                        "text_heading": "#26201A",
                        "text_body": "#3C3131",
                        "text_label": "#7D7676",
                        "text_secondary": "#9C9C9C"
                      },
                      "button": {
                        "button_primary": "#4E3F09",
                        "button_secondary": "#FFFFFF",
                        "button_link": "#B1655B"
                      },
                      "sale_discount": {
                        "sale_badge_background": "#FFFFFF",
                        "sale_badge_text": "#1C958F",
                        "sale_discount_text": "#1C958F",
                        "sale_timer": "#994449"
                      },
                      "header": {
                        "header_background": "#F3F3ED",
                        "header_nav": "#261A1A",
                        "header_icon": "#261A1A"
                      },
                      "footer": {
                        "footer_background": "#2C231E",
                        "footer_bottom_background": "#231812",
                        "footer_heading_text": "#FFFFFF",
                        "footer_body_text": "#FFFFFF",
                        "footer_icon": "#FFFFFF"
                      }
                    },
                    "advance_setting": {
                      "overlay_popup": {
                        "dialog_backgroung": "#FFFFFF",
                        "overlay": "#14130E"
                      },
                      "divider_stroke_highlight": {
                        "divider_strokes": "#D4D1D1",
                        "highlight": "#EDECE9"
                      },
                      "user_alerts": {
                        "success_background": "#C2DBC9",
                        "success_text": "#1C958F",
                        "error_background": "#E6D5D5",
                        "error_text": "#B24141",
                        "info_background": "#EBD3BC",
                        "info_text": "#D28F51"
                      }
                    }
                  },
                  "extension": {
                    "header_top": [],
                    "header_bottom": [],
                    "footer_top": [],
                    "footer_bottom": []
                  }
                }
              },
              "custom": {
                "props": {
                  "header_bg_color": "#7f9ed0",
                  "header_text_color": "#FFFFFF",
                  "header_border_color": "#FFFFFF",
                  "header_icon_color": "#FFFFFF",
                  "header_cart_notification_bg_color": "#2e3032",
                  "header_cart_notification_text_color": "#FFFFFF",
                  "header_nav_hover_color": "#2e3032",
                  "button_primary_color": "#ffffff",
                  "button_primary_label_color": "#000000",
                  "button_add_to_cart_color": "#000000",
                  "button_add_to_cart_label_color": "#ffffff",
                  "button_secondary_color": "#000000",
                  "button_secondary_label_color": "#ffffff",
                  "button_tertiary_color": "#000000",
                  "button_tertiary_label_color": "#000000",
                  "button_tertiary_hover_color": "#000000",
                  "button_tertiary_hover_text_color": "#ffffff",
                  "text_heading_link_color": "#000000",
                  "text_body_color": "#000000",
                  "text_price_color": "#000000",
                  "text_sale_price_color": "#fb406b",
                  "text_strikethrough_price_color": "#9b9b9b",
                  "text_discount_color": "#ee478d",
                  "footer_bg_color": "#7f9ed0",
                  "footer_text_color": "#FFFFFF",
                  "footer_border_color": "#FFFFFF",
                  "footer_nav_hover_color": "#2e3032"
                }
              }
            },
            "page": []
          }
        ],
        "preset": {
          "pages": [
            {
              "sections": [
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
                      "exact_url": ""
                    }
                  },
                  "name": "hero_image",
                  "props": {
                    "image": {
                      "value": "",
                      "type": "image_picker"
                    },
                    "overlay_layout": {
                      "type": "select",
                      "value": "center"
                    },
                    "overlay_image": {
                      "value": "",
                      "type": "image_picker"
                    },
                    "overlay_text": {
                      "value": "",
                      "type": "text"
                    },
                    "text_color": {
                      "value": "#000",
                      "type": "color"
                    },
                    "button_link": {
                      "type": "url",
                      "value": ""
                    },
                    "button_text": {
                      "value": "Shop Now",
                      "type": "text"
                    },
                    "full_width": {
                      "value": true,
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
                      "exact_url": ""
                    }
                  },
                  "name": "image_slideshow",
                  "props": {
                    "autoplay": {
                      "value": false,
                      "type": "checkbox"
                    },
                    "full_width": {
                      "value": false,
                      "type": "checkbox"
                    },
                    "slide_height": {
                      "value": "adapt",
                      "type": "select"
                    },
                    "slide_interval": {
                      "value": 2,
                      "type": "range"
                    },
                    "title": {
                      "value": "Trending",
                      "type": "text"
                    }
                  },
                  "preset": {
                    "blocks": [
                      {
                        "name": "Slide"
                      },
                      {
                        "name": "Slide"
                      },
                      {
                        "name": "Slide"
                      }
                    ]
                  }
                },
                {
                  "blocks": [
                    {
                      "type": "gallery_image",
                      "name": "Image",
                      "props": {
                        "image": {
                          "type": "image_picker",
                          "value": ""
                        },
                        "caption": {
                          "type": "text",
                          "value": ""
                        },
                        "link": {
                          "type": "url",
                          "value": ""
                        }
                      }
                    },
                    {
                      "type": "gallery_image",
                      "name": "Image",
                      "props": {
                        "image": {
                          "type": "image_picker",
                          "value": ""
                        },
                        "caption": {
                          "type": "text",
                          "value": ""
                        },
                        "link": {
                          "type": "url",
                          "value": ""
                        }
                      }
                    },
                    {
                      "type": "gallery_image",
                      "name": "Image",
                      "props": {
                        "image": {
                          "type": "image_picker",
                          "value": ""
                        },
                        "caption": {
                          "type": "text",
                          "value": ""
                        },
                        "link": {
                          "type": "url",
                          "value": ""
                        }
                      }
                    },
                    {
                      "type": "gallery_image",
                      "name": "Image",
                      "props": {
                        "image": {
                          "type": "image_picker",
                          "value": ""
                        },
                        "caption": {
                          "type": "text",
                          "value": ""
                        },
                        "link": {
                          "type": "url",
                          "value": ""
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
                      "exact_url": ""
                    }
                  },
                  "name": "image_gallery",
                  "props": {
                    "title": {
                      "type": "text",
                      "value": "Popular Brands"
                    },
                    "layout": {
                      "value": "grid",
                      "type": "select"
                    },
                    "item_count": {
                      "value": 4,
                      "type": "range"
                    },
                    "cta_text": {
                      "value": "",
                      "type": "text"
                    },
                    "cta_link": {
                      "type": "url",
                      "value": ""
                    },
                    "full_width": {
                      "value": false,
                      "type": "checkbox"
                    }
                  },
                  "preset": {
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
                      "exact_url": ""
                    }
                  },
                  "name": "brands_listing",
                  "props": {
                    "brand_type": {
                      "value": "all",
                      "type": "radio"
                    },
                    "cta_text": {
                      "value": "View all",
                      "type": "text"
                    },
                    "department": {
                      "type": "department"
                    },
                    "header": {
                      "type": "header"
                    },
                    "items_per_row": {
                      "value": 5,
                      "type": "range"
                    },
                    "layout": {
                      "value": "horizontal",
                      "type": "select"
                    },
                    "title": {
                      "type": "text",
                      "value": "Brands"
                    },
                    "view_options": {
                      "value": "fullview",
                      "type": "select"
                    }
                  }
                },
                {
                  "blocks": [
                    {
                      "type": "testimonial",
                      "name": "Testimonial",
                      "props": {
                        "testimonialText": {
                          "type": "textarea",
                          "value": ""
                        },
                        "author_name": {
                          "type": "text"
                        },
                        "author_description": {
                          "type": "text",
                          "value": ""
                        },
                        "author_image": {
                          "type": "image_picker",
                          "value": ""
                        }
                      }
                    },
                    {
                      "type": "testimonial",
                      "name": "Testimonial",
                      "props": {
                        "testimonialText": {
                          "type": "textarea",
                          "value": ""
                        },
                        "author_name": {
                          "type": "text"
                        },
                        "author_description": {
                          "type": "text",
                          "value": ""
                        },
                        "author_image": {
                          "type": "image_picker",
                          "value": ""
                        }
                      }
                    },
                    {
                      "type": "testimonial",
                      "name": "Testimonial",
                      "props": {
                        "testimonialText": {
                          "type": "textarea",
                          "value": ""
                        },
                        "author_name": {
                          "type": "text"
                        },
                        "author_description": {
                          "type": "text",
                          "value": ""
                        },
                        "author_image": {
                          "type": "image_picker",
                          "value": ""
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
                      "exact_url": ""
                    }
                  },
                  "name": "testimonials",
                  "props": {
                    "autoplay": {
                      "value": false,
                      "type": "checkbox"
                    },
                    "slide_interval": {
                      "value": 2,
                      "type": "range"
                    }
                  },
                  "preset": {
                    "blocks": [
                      {
                        "name": "Testimonial"
                      },
                      {
                        "name": "Testimonial"
                      },
                      {
                        "name": "Testimonial"
                      }
                    ]
                  }
                }
              ],
              "value": "home"
            }
          ]
        },
        "global_schema": {
          "props": [
            {
              "type": "checkbox",
              "id": "disable_cart",
              "category": "Colors",
              "label": "header"
            }
          ]
        }
      },
      "available_sections": [
        {
          "props": [
            {
              "type": "url",
              "id": "banner_link",
              "label": "Redirect Link"
            },
            {
              "type": "checkbox",
              "id": "full_width",
              "label": "Full width",
              "info": "Check to allow items to take entire width of the viewport"
            },
            {
              "type": "range",
              "id": "margin_top",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Top Margin"
            },
            {
              "type": "range",
              "id": "margin_bottom",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Bottom Margin"
            }
          ],
          "blocks": [],
          "name": "application_banner",
          "label": "Application Banner"
        },
        {
          "props": [
            {
              "type": "text",
              "id": "title",
              "label": "Title"
            },
            {
              "type": "range",
              "id": "margin_top",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Top Margin"
            },
            {
              "type": "range",
              "id": "margin_bottom",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Bottom Margin"
            },
            {
              "type": "header",
              "id": "header",
              "value": "Choose Brands to Show"
            },
            {
              "id": "view_options",
              "type": "select",
              "options": [
                {
                  "value": "logo",
                  "text": "Logo View"
                },
                {
                  "value": "fullview",
                  "text": "Logo and Banner View"
                }
              ],
              "label": "View Options",
              "info": "Brand card view options"
            },
            {
              "type": "radio",
              "id": "brand_type",
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
              "id": "items_per_row",
              "min": 3,
              "max": 5,
              "step": 1,
              "unit": "",
              "label": "Items per row",
              "info": "Maximum items allowed per row"
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
              "label": "Layout",
              "info": "Alignment of content"
            },
            {
              "type": "text",
              "id": "cta_text",
              "label": "CTA Text"
            }
          ],
          "blocks": [
            {
              "type": "brand_item",
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
          "name": "brands_listing",
          "label": "Brands Listing"
        },
        {
          "props": [
            {
              "type": "text",
              "id": "title",
              "label": "Title"
            },
            {
              "type": "range",
              "id": "margin_top",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Top Margin"
            },
            {
              "type": "range",
              "id": "margin_bottom",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Bottom Margin"
            },
            {
              "type": "radio",
              "id": "collection_type",
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
              "type": "text",
              "id": "tags_filter",
              "label": "Filter by tags",
              "info": "Filter by Tags "
            },
            {
              "type": "range",
              "id": "items_per_row",
              "min": 3,
              "max": 5,
              "step": 1,
              "unit": "",
              "label": "Max items per row",
              "info": "Maximum items allowed per row"
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
              "label": "Layout",
              "info": "Alignment of content"
            },
            {
              "type": "text",
              "id": "cta_text",
              "label": "CTA Text"
            }
          ],
          "blocks": [
            {
              "type": "collection-item",
              "name": "collection Item",
              "props": [
                {
                  "type": "collection",
                  "id": "collection",
                  "label": "Select Collection"
                }
              ]
            }
          ],
          "name": "collections_listing",
          "label": "Collections Listing"
        },
        {
          "props": [
            {
              "type": "code",
              "id": "code",
              "label": "Custom HTML",
              "info": "Add Your custom HTML Code below. You can also use the full screen icon to open a code editor and add your code"
            },
            {
              "type": "range",
              "id": "margin_top",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Top Margin"
            },
            {
              "type": "range",
              "id": "margin_bottom",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Bottom Margin"
            }
          ],
          "blocks": [],
          "name": "custom_html",
          "label": "Custom HTML"
        },
        {
          "props": [
            {
              "type": "extension",
              "id": "extension",
              "label": "Extension Positions",
              "info": "Handle extension in these positions",
              "positions": [
                {
                  "value": "section_extension",
                  "text": ""
                }
              ]
            },
            {
              "type": "range",
              "id": "margin_top",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Top Margin"
            },
            {
              "type": "range",
              "id": "margin_bottom",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Bottom Margin"
            }
          ],
          "blocks": [],
          "name": "section_extension",
          "label": "Extensions"
        },
        {
          "props": [
            {
              "type": "text",
              "id": "title",
              "label": "Title"
            },
            {
              "type": "range",
              "id": "margin_top",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Top Margin"
            },
            {
              "type": "range",
              "id": "margin_bottom",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Bottom Margin"
            },
            {
              "type": "collection",
              "id": "collection",
              "label": "Collection",
              "info": "Select a collection to display its products"
            },
            {
              "type": "range",
              "id": "items_per_row",
              "min": 2,
              "max": 5,
              "step": 1,
              "unit": "",
              "label": "Products per row",
              "info": "Maximum items allowed per row"
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
              "label": "Layout",
              "info": "Alignment of content"
            },
            {
              "type": "checkbox",
              "id": "autoplay",
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
              "info": "Autoplay slide duration"
            }
          ],
          "blocks": [],
          "name": "featured_collection",
          "label": "Featured Collection"
        },
        {
          "props": [
            {
              "id": "image",
              "type": "image_picker",
              "label": "Hero Image"
            },
            {
              "type": "range",
              "id": "margin_top",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Top Margin"
            },
            {
              "type": "range",
              "id": "margin_bottom",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Bottom Margin"
            },
            {
              "id": "overlay_layout",
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
              "label": "Overlay Layout",
              "info": "Alignment of overlay content"
            },
            {
              "type": "image_picker",
              "id": "overlay_image",
              "label": "Overlay image",
              "info": "Overlay Image"
            },
            {
              "type": "text",
              "id": "overlay_text",
              "label": "Overlay Text"
            },
            {
              "type": "color",
              "id": "text_color",
              "label": "Text Color"
            },
            {
              "type": "url",
              "id": "button_link",
              "label": "Redirect Link"
            },
            {
              "type": "text",
              "id": "button_text",
              "label": "Button Text"
            },
            {
              "type": "checkbox",
              "id": "full_width",
              "label": "Full width",
              "info": "Check to allow items to take entire width of the viewport"
            },
            {
              "type": "checkbox",
              "id": "fullscreen_image",
              "label": "Fullscreen Banner ",
              "info": "Check to allow items to take entire viewport"
            }
          ],
          "blocks": [],
          "name": "hero_image",
          "label": "Hero Image"
        },
        {
          "props": [
            {
              "type": "video",
              "id": "videoFile",
              "label": "Primary Video"
            },
            {
              "id": "videoUrl",
              "type": "text",
              "label": "Video URL",
              "info": "Supports MP4 Video & Youtube Video URL"
            },
            {
              "type": "checkbox",
              "id": "autoplay",
              "label": "Autoplay",
              "info": "Check to enable autoplay (Video will be muted if autoplay is active)"
            },
            {
              "type": "checkbox",
              "id": "hidecontrols",
              "label": "Hide Video Controls",
              "info": "check to disable video controls"
            },
            {
              "type": "checkbox",
              "id": "showloop",
              "label": "Play Video in Loop",
              "info": "check to disable Loop"
            },
            {
              "type": "text",
              "id": "title",
              "label": "Heading"
            },
            {
              "id": "coverUrl",
              "type": "image_picker",
              "label": "Thumbnail Image"
            }
          ],
          "blocks": [],
          "name": "hero_video-v2",
          "label": "Hero Video V2"
        },
        {
          "props": [
            {
              "id": "video_url",
              "type": "text",
              "label": "Video URL",
              "info": "Supports MP4 Video & Youtube Video URL"
            },
            {
              "type": "range",
              "id": "margin_top",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Top Margin"
            },
            {
              "type": "range",
              "id": "margin_bottom",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Bottom Margin"
            },
            {
              "type": "checkbox",
              "id": "autoplay",
              "label": "Autoplay",
              "info": "Check to enable autoplay (Video will be muted if autoplay is active)"
            },
            {
              "type": "checkbox",
              "id": "controls",
              "label": "Video Controls",
              "info": "Uncheck to disable video controls"
            },
            {
              "type": "checkbox",
              "id": "full_width",
              "label": "Full width",
              "info": "Check to allow items to take entire width of the viewport"
            },
            {
              "type": "checkbox",
              "id": "bg_video",
              "label": "Video In Background",
              "info": "Use video in background with overlay (Overlay Image & Video Controls will be disabled by default on website)"
            },
            {
              "type": "select",
              "id": "size",
              "options": [
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
                },
                {
                  "value": "adapt",
                  "text": "Adapt"
                },
                {
                  "value": "fullscreen",
                  "text": "Fullscreen"
                }
              ],
              "label": "Video Height",
              "info": "Height of Video"
            },
            {
              "type": "checkbox",
              "id": "enable_overlay_image",
              "label": "Enable Overlay Image"
            },
            {
              "id": "cover_url",
              "type": "image_picker",
              "label": "Video Overlay Image"
            },
            {
              "type": "checkbox",
              "id": "enable_overlay_color",
              "label": "Enable Overlay Colour"
            },
            {
              "type": "color",
              "id": "overlay_color",
              "label": "Overlay Color"
            },
            {
              "type": "range",
              "id": "overlay_opacity",
              "min": 0,
              "max": 1,
              "step": 0.1,
              "unit": "",
              "label": "Overlay Opacity"
            },
            {
              "type": "select",
              "id": "overlay_size",
              "options": [
                {
                  "value": "container",
                  "text": "Container (Default)"
                },
                {
                  "value": "content",
                  "text": "Content"
                }
              ],
              "label": "Overlay Size"
            },
            {
              "id": "overlay_position",
              "type": "select",
              "options": [
                {
                  "value": "top-left",
                  "text": "Top Left"
                },
                {
                  "value": "top-center",
                  "text": "Top Center"
                },
                {
                  "value": "top-right",
                  "text": "Top Right"
                },
                {
                  "value": "center-left",
                  "text": "Center Left"
                },
                {
                  "value": "center-center",
                  "text": "Center (Default)"
                },
                {
                  "value": "center-right",
                  "text": "Center Right"
                },
                {
                  "value": "bottom-left",
                  "text": "Bottom Left"
                },
                {
                  "value": "bottom-center",
                  "text": "Bottom Center"
                },
                {
                  "value": "bottom-right",
                  "text": "Bottom right"
                }
              ],
              "label": "Overlay position",
              "info": "Alignment of Overlay content(heading, sub-heading, button)"
            },
            {
              "type": "text",
              "id": "heading",
              "label": "Heading"
            },
            {
              "type": "color",
              "id": "heading_color",
              "label": "Heading Text Color"
            },
            {
              "type": "text",
              "id": "sub_heading",
              "label": "Sub-heading"
            },
            {
              "type": "color",
              "id": "sub_heading_color",
              "label": "Sub-heading Text Color"
            },
            {
              "type": "url",
              "id": "button_link",
              "label": "Redirect Link"
            },
            {
              "type": "text",
              "id": "button_text",
              "label": "Button Text"
            }
          ],
          "blocks": [],
          "name": "hero_video",
          "label": "Hero Video"
        },
        {
          "props": [
            {
              "type": "text",
              "id": "title",
              "label": "Title"
            },
            {
              "type": "range",
              "id": "margin_top",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Top Margin"
            },
            {
              "type": "range",
              "id": "margin_bottom",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Bottom Margin"
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
              "label": "Layout",
              "info": "Alignment of content"
            },
            {
              "type": "range",
              "id": "item_count",
              "min": 3,
              "max": 4,
              "step": 1,
              "unit": "",
              "label": "No of items",
              "info": "Maximum items allowed per row for Horizontal view, for gallery max 5 are viewable and only 5 blocks are required"
            },
            {
              "type": "text",
              "id": "cta_text",
              "label": "CTA Text"
            },
            {
              "type": "url",
              "id": "cta_link",
              "label": "CTA Link",
              "info": "Link to redirect"
            },
            {
              "type": "checkbox",
              "id": "full_width",
              "label": "Full width",
              "info": "Check to allow items to take entire width of the viewport"
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
                  "type": "text",
                  "id": "caption",
                  "label": "Image Caption"
                },
                {
                  "type": "url",
                  "id": "link",
                  "label": "Link",
                  "info": "Link to redirect"
                }
              ]
            }
          ],
          "name": "image_gallery",
          "label": "Image Gallery",
          "preset": {
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
              "type": "text",
              "id": "title",
              "label": "Title"
            },
            {
              "type": "range",
              "id": "margin_top",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Top Margin"
            },
            {
              "type": "range",
              "id": "margin_bottom",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Bottom Margin"
            },
            {
              "type": "checkbox",
              "id": "autoplay",
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
              "info": "Autoplay slide duration"
            },
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
              "label": "Slide height",
              "info": "Size of the slide"
            },
            {
              "type": "checkbox",
              "id": "full_width",
              "label": "Full width",
              "info": "Check to allow items to take entire width of the viewport"
            }
          ],
          "blocks": [
            {
              "type": "image_slide",
              "name": "Slide",
              "props": [
                {
                  "type": "image_picker",
                  "id": "image",
                  "label": "Image"
                },
                {
                  "type": "url",
                  "id": "slide_link",
                  "label": "Slide Link"
                }
              ]
            }
          ],
          "name": "image_slideshow",
          "label": "Image Slideshow",
          "preset": {
            "blocks": [
              {
                "name": "Slide"
              },
              {
                "name": "Slide"
              },
              {
                "name": "Slide"
              }
            ]
          }
        },
        {
          "props": [
            {
              "type": "image_picker",
              "id": "image",
              "label": "Image"
            },
            {
              "id": "video",
              "type": "url",
              "label": "Video"
            },
            {
              "type": "range",
              "id": "margin_top",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Top Margin"
            },
            {
              "type": "range",
              "id": "margin_bottom",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Bottom Margin"
            },
            {
              "id": "cover",
              "type": "url",
              "label": "Video Cover Image"
            },
            {
              "type": "select",
              "id": "media_alignment",
              "options": [
                {
                  "value": "left",
                  "text": "Left"
                },
                {
                  "value": "center",
                  "text": "Center"
                },
                {
                  "value": "right",
                  "text": "Right"
                }
              ],
              "label": "Media Alignment"
            },
            {
              "type": "text",
              "id": "heading",
              "label": "Heading"
            },
            {
              "type": "text",
              "id": "text Pair large text with an image to give focus to your chosen product, collection, or blog post. Add details on availability, style, or even provide a review.",
              "label": "Text"
            },
            {
              "type": "select",
              "id": "text_alignment",
              "options": [
                {
                  "value": "left",
                  "text": "Left"
                },
                {
                  "value": "center",
                  "text": "Center"
                },
                {
                  "value": "right",
                  "text": "Right"
                }
              ],
              "label": "Text Alignment"
            }
          ],
          "blocks": [],
          "name": "media_with_text",
          "label": "Media with text"
        },
        {
          "props": [
            {
              "type": "text",
              "id": "title",
              "label": "Title"
            },
            {
              "type": "range",
              "id": "margin_top",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Top Margin"
            },
            {
              "type": "range",
              "id": "margin_bottom",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Bottom Margin"
            },
            {
              "type": "checkbox",
              "id": "autoplay",
              "label": "AutoPlay Slides"
            },
            {
              "type": "range",
              "id": "slide_interval",
              "min": 1,
              "max": 10,
              "step": 1,
              "unit": "sec",
              "label": "Change slides every"
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
                  "info": "Text for testimonial",
                  "placeholder": "Text"
                },
                {
                  "type": "text",
                  "id": "author_name",
                  "label": "Author name"
                },
                {
                  "type": "text",
                  "id": "author_description",
                  "label": "Author Description"
                },
                {
                  "type": "image_picker",
                  "id": "author_image",
                  "label": "Author Image"
                }
              ]
            }
          ],
          "name": "testimonials",
          "label": "Testimonial",
          "preset": {
            "blocks": [
              {
                "name": "Testimonial"
              },
              {
                "name": "Testimonial"
              },
              {
                "name": "Testimonial"
              }
            ]
          }
        }
      ],
      "src": "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/7yuL57qP2-archive.zip"
    }
  ]
}
```
</details>

<details>
<summary><i>&nbsp; example2</i></summary>

```json
{
  "value": [
    {
      "_id": "64b91fe317422a1e1392f85b",
      "applied": true,
      "is_private": true,
      "tags": [],
      "name": "Astra",
      "version": "1.0.11",
      "application_id": "7487ea376e1442284917c44e",
      "styles": {},
      "template_theme_id": "64be264c0347c5002279b75f",
      "created_at": "2023-07-24T07:20:44.629Z",
      "updated_at": "2023-08-01T11:09:25.857Z",
      "theme_type": "vue2",
      "assets": {
        "umd_js": {
          "links": [
            "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_themeBundle.umd.min.9.js",
            "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_themeBundle.umd.min.cart.js",
            "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_themeBundle.umd.min.extras.js",
            "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_themeBundle.umd.min.products-listing_profile.js",
            "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_themeBundle.umd.min.products-listing.js",
            "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_themeBundle.umd.min.products.js",
            "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_themeBundle.umd.min.profile.js",
            "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_themeBundle.umd.min.vendors_products-listing.js",
            "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_themeBundle.umd.min.vendors_products.js",
            "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_themeBundle.umd.min.js"
          ],
          "link": ""
        },
        "common_js": {
          "link": "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_themeBundle.common.js"
        },
        "css": {
          "links": [
            "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_extras.8604b743eb82cd74e4bb.css",
            "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_products-listing_profile.944723408675f52ed297.css",
            "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_products-listing.ca493ea7d081b4b575f7.css",
            "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_products.2c64f7731dab64227f0b.css",
            "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_profile.1b1467735927e188d272.css",
            "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_themeBundle.css",
            "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_vendors_products-listing.c8fe85761d60286348e3.css"
          ],
          "link": ""
        }
      },
      "font": {
        "variants": {
          "light": {
            "name": "300",
            "file": "https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLDz8V1tvFP-KUEg.ttf"
          },
          "regular": {
            "name": "regular",
            "file": "https://fonts.gstatic.com/s/poppins/v20/pxiEyp8kv8JHgFVrFJDUc1NECPY.ttf"
          },
          "medium": {
            "name": "500",
            "file": "https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLGT9V1tvFP-KUEg.ttf"
          },
          "semi_bold": {
            "name": "600",
            "file": "https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLEj6V1tvFP-KUEg.ttf"
          },
          "bold": {
            "name": "700",
            "file": "https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLCz7V1tvFP-KUEg.ttf"
          }
        },
        "family": "Poppins"
      },
      "config": {
        "current": "Default",
        "list": [
          {
            "name": "Default",
            "global_config": {
              "static": {
                "props": {
                  "colors": {
                    "primary_color": "#000000",
                    "secondary_color": "#000000",
                    "accent_color": "#000000",
                    "link_color": "#4499FF",
                    "button_secondary_color": "#000000",
                    "bg_color": "#F8F8F8"
                  },
                  "auth": {
                    "show_header_auth": false,
                    "show_footer_auth": false
                  },
                  "palette": {
                    "general_setting": {
                      "theme": {
                        "page_background": "#F3F3ED",
                        "theme_accent": "#E1D0C8"
                      },
                      "text": {
                        "text_heading": "#26201A",
                        "text_body": "#3C3131",
                        "text_label": "#7D7676",
                        "text_secondary": "#9C9C9C"
                      },
                      "button": {
                        "button_primary": "#4E3F09",
                        "button_secondary": "#FFFFFF",
                        "button_link": "#B1655B"
                      },
                      "sale_discount": {
                        "sale_badge_background": "#FFFFFF",
                        "sale_badge_text": "#1C958F",
                        "sale_discount_text": "#1C958F",
                        "sale_timer": "#994449"
                      },
                      "header": {
                        "header_background": "#F3F3ED",
                        "header_nav": "#261A1A",
                        "header_icon": "#261A1A"
                      },
                      "footer": {
                        "footer_background": "#2C231E",
                        "footer_bottom_background": "#231812",
                        "footer_heading_text": "#FFFFFF",
                        "footer_body_text": "#FFFFFF",
                        "footer_icon": "#FFFFFF"
                      }
                    },
                    "advance_setting": {
                      "overlay_popup": {
                        "dialog_backgroung": "#FFFFFF",
                        "overlay": "#14130E"
                      },
                      "divider_stroke_highlight": {
                        "divider_strokes": "#D4D1D1",
                        "highlight": "#EDECE9"
                      },
                      "user_alerts": {
                        "success_background": "#C2DBC9",
                        "success_text": "#1C958F",
                        "error_background": "#E6D5D5",
                        "error_text": "#B24141",
                        "info_background": "#EBD3BC",
                        "info_text": "#D28F51"
                      }
                    }
                  },
                  "extension": {
                    "header_top": [],
                    "header_bottom": [],
                    "footer_top": [],
                    "footer_bottom": []
                  }
                }
              },
              "custom": {
                "props": {
                  "header_bg_color": "#ffffff",
                  "header_text_color": "#000000",
                  "header_border_color": "#e1e1e1",
                  "header_icon_color": "#000000",
                  "header_cart_notification_bg_color": "#e8a76c",
                  "header_cart_notification_text_color": "#ffffff",
                  "header_nav_hover_color": "#999999",
                  "button_primary_color": "#ffffff",
                  "button_primary_label_color": "#000000",
                  "button_add_to_cart_color": "#000000",
                  "button_add_to_cart_label_color": "#ffffff",
                  "button_secondary_color": "#000000",
                  "button_secondary_label_color": "#ffffff",
                  "button_tertiary_color": "#000000",
                  "button_tertiary_label_color": "#000000",
                  "button_tertiary_hover_color": "#000000",
                  "button_tertiary_hover_text_color": "#ffffff",
                  "text_heading_link_color": "#000000",
                  "text_body_color": "#000000",
                  "text_price_color": "#000000",
                  "text_sale_price_color": "#fb406b",
                  "text_strikethrough_price_color": "#9b9b9b",
                  "text_discount_color": "#ee478d",
                  "footer_bg_color": "#ffffff",
                  "footer_text_color": "#999999",
                  "footer_border_color": "#e1e1e1",
                  "footer_nav_hover_color": "#000000",
                  "disable_cart": false,
                  "is_menu_below_logo": false,
                  "menu_position": "left"
                }
              }
            },
            "page": []
          },
          {
            "name": "Dark",
            "global_config": {
              "static": {
                "props": {
                  "colors": {
                    "primary_color": "#000000",
                    "secondary_color": "#000000",
                    "accent_color": "#000000",
                    "link_color": "#4499FF",
                    "button_secondary_color": "#000000",
                    "bg_color": "#F8F8F8"
                  },
                  "auth": {
                    "show_header_auth": false,
                    "show_footer_auth": false
                  },
                  "palette": {
                    "general_setting": {
                      "theme": {
                        "page_background": "#F3F3ED",
                        "theme_accent": "#E1D0C8"
                      },
                      "text": {
                        "text_heading": "#26201A",
                        "text_body": "#3C3131",
                        "text_label": "#7D7676",
                        "text_secondary": "#9C9C9C"
                      },
                      "button": {
                        "button_primary": "#4E3F09",
                        "button_secondary": "#FFFFFF",
                        "button_link": "#B1655B"
                      },
                      "sale_discount": {
                        "sale_badge_background": "#FFFFFF",
                        "sale_badge_text": "#1C958F",
                        "sale_discount_text": "#1C958F",
                        "sale_timer": "#994449"
                      },
                      "header": {
                        "header_background": "#F3F3ED",
                        "header_nav": "#261A1A",
                        "header_icon": "#261A1A"
                      },
                      "footer": {
                        "footer_background": "#2C231E",
                        "footer_bottom_background": "#231812",
                        "footer_heading_text": "#FFFFFF",
                        "footer_body_text": "#FFFFFF",
                        "footer_icon": "#FFFFFF"
                      }
                    },
                    "advance_setting": {
                      "overlay_popup": {
                        "dialog_backgroung": "#FFFFFF",
                        "overlay": "#14130E"
                      },
                      "divider_stroke_highlight": {
                        "divider_strokes": "#D4D1D1",
                        "highlight": "#EDECE9"
                      },
                      "user_alerts": {
                        "success_background": "#C2DBC9",
                        "success_text": "#1C958F",
                        "error_background": "#E6D5D5",
                        "error_text": "#B24141",
                        "info_background": "#EBD3BC",
                        "info_text": "#D28F51"
                      }
                    }
                  },
                  "extension": {
                    "header_top": [],
                    "header_bottom": [],
                    "footer_top": [],
                    "footer_bottom": []
                  }
                }
              },
              "custom": {
                "props": {
                  "header_bg_color": "#2e3032",
                  "header_text_color": "#ffffff",
                  "header_border_color": "#FFFFFF",
                  "header_icon_color": "#ffffff",
                  "header_cart_notification_bg_color": "#FFFFFF",
                  "header_cart_notification_text_color": "#2e3032",
                  "header_nav_hover_color": "#000000",
                  "button_primary_color": "#000000",
                  "button_primary_label_color": "#ffffff",
                  "button_add_to_cart_color": "#000000",
                  "button_add_to_cart_label_color": "#ffffff",
                  "button_secondary_color": "#000000",
                  "button_secondary_label_color": "#ffffff",
                  "button_tertiary_color": "#000000",
                  "button_tertiary_label_color": "#000000",
                  "button_tertiary_hover_color": "#000000",
                  "button_tertiary_hover_text_color": "#ffffff",
                  "text_heading_link_color": "#000000",
                  "text_body_color": "#000000",
                  "text_price_color": "#000000",
                  "text_sale_price_color": "#fb406b",
                  "text_strikethrough_price_color": "#9b9b9b",
                  "text_discount_color": "#ee478d",
                  "footer_bg_color": "#2e3032",
                  "footer_text_color": "#ffffff",
                  "footer_border_color": "#FFFFFF",
                  "footer_nav_hover_color": "#ffffff"
                }
              }
            },
            "page": []
          },
          {
            "name": "Blue",
            "global_config": {
              "static": {
                "props": {
                  "colors": {
                    "primary_color": "#000000",
                    "secondary_color": "#000000",
                    "accent_color": "#000000",
                    "link_color": "#4499FF",
                    "button_secondary_color": "#000000",
                    "bg_color": "#F8F8F8"
                  },
                  "auth": {
                    "show_header_auth": false,
                    "show_footer_auth": false
                  },
                  "palette": {
                    "general_setting": {
                      "theme": {
                        "page_background": "#F3F3ED",
                        "theme_accent": "#E1D0C8"
                      },
                      "text": {
                        "text_heading": "#26201A",
                        "text_body": "#3C3131",
                        "text_label": "#7D7676",
                        "text_secondary": "#9C9C9C"
                      },
                      "button": {
                        "button_primary": "#4E3F09",
                        "button_secondary": "#FFFFFF",
                        "button_link": "#B1655B"
                      },
                      "sale_discount": {
                        "sale_badge_background": "#FFFFFF",
                        "sale_badge_text": "#1C958F",
                        "sale_discount_text": "#1C958F",
                        "sale_timer": "#994449"
                      },
                      "header": {
                        "header_background": "#F3F3ED",
                        "header_nav": "#261A1A",
                        "header_icon": "#261A1A"
                      },
                      "footer": {
                        "footer_background": "#2C231E",
                        "footer_bottom_background": "#231812",
                        "footer_heading_text": "#FFFFFF",
                        "footer_body_text": "#FFFFFF",
                        "footer_icon": "#FFFFFF"
                      }
                    },
                    "advance_setting": {
                      "overlay_popup": {
                        "dialog_backgroung": "#FFFFFF",
                        "overlay": "#14130E"
                      },
                      "divider_stroke_highlight": {
                        "divider_strokes": "#D4D1D1",
                        "highlight": "#EDECE9"
                      },
                      "user_alerts": {
                        "success_background": "#C2DBC9",
                        "success_text": "#1C958F",
                        "error_background": "#E6D5D5",
                        "error_text": "#B24141",
                        "info_background": "#EBD3BC",
                        "info_text": "#D28F51"
                      }
                    }
                  },
                  "extension": {
                    "header_top": [],
                    "header_bottom": [],
                    "footer_top": [],
                    "footer_bottom": []
                  }
                }
              },
              "custom": {
                "props": {
                  "header_bg_color": "#7f9ed0",
                  "header_text_color": "#FFFFFF",
                  "header_border_color": "#FFFFFF",
                  "header_icon_color": "#FFFFFF",
                  "header_cart_notification_bg_color": "#2e3032",
                  "header_cart_notification_text_color": "#FFFFFF",
                  "header_nav_hover_color": "#2e3032",
                  "button_primary_color": "#ffffff",
                  "button_primary_label_color": "#000000",
                  "button_add_to_cart_color": "#000000",
                  "button_add_to_cart_label_color": "#ffffff",
                  "button_secondary_color": "#000000",
                  "button_secondary_label_color": "#ffffff",
                  "button_tertiary_color": "#000000",
                  "button_tertiary_label_color": "#000000",
                  "button_tertiary_hover_color": "#000000",
                  "button_tertiary_hover_text_color": "#ffffff",
                  "text_heading_link_color": "#000000",
                  "text_body_color": "#000000",
                  "text_price_color": "#000000",
                  "text_sale_price_color": "#fb406b",
                  "text_strikethrough_price_color": "#9b9b9b",
                  "text_discount_color": "#ee478d",
                  "footer_bg_color": "#7f9ed0",
                  "footer_text_color": "#FFFFFF",
                  "footer_border_color": "#FFFFFF",
                  "footer_nav_hover_color": "#2e3032"
                }
              }
            },
            "page": []
          }
        ],
        "preset": {
          "pages": [
            {
              "sections": [
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
                      "exact_url": ""
                    }
                  },
                  "name": "hero_image",
                  "props": {
                    "image": {
                      "value": "",
                      "type": "image_picker"
                    },
                    "overlay_layout": {
                      "type": "select",
                      "value": "center"
                    },
                    "overlay_image": {
                      "value": "",
                      "type": "image_picker"
                    },
                    "overlay_text": {
                      "value": "",
                      "type": "text"
                    },
                    "text_color": {
                      "value": "#000",
                      "type": "color"
                    },
                    "button_link": {
                      "type": "url",
                      "value": ""
                    },
                    "button_text": {
                      "value": "Shop Now",
                      "type": "text"
                    },
                    "full_width": {
                      "value": true,
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
                      "exact_url": ""
                    }
                  },
                  "name": "image_slideshow",
                  "props": {
                    "autoplay": {
                      "value": false,
                      "type": "checkbox"
                    },
                    "full_width": {
                      "value": false,
                      "type": "checkbox"
                    },
                    "slide_height": {
                      "value": "adapt",
                      "type": "select"
                    },
                    "slide_interval": {
                      "value": 2,
                      "type": "range"
                    },
                    "title": {
                      "value": "Trending",
                      "type": "text"
                    }
                  },
                  "preset": {
                    "blocks": [
                      {
                        "name": "Slide"
                      },
                      {
                        "name": "Slide"
                      },
                      {
                        "name": "Slide"
                      }
                    ]
                  }
                },
                {
                  "blocks": [
                    {
                      "type": "gallery_image",
                      "name": "Image",
                      "props": {
                        "image": {
                          "type": "image_picker",
                          "value": ""
                        },
                        "caption": {
                          "type": "text",
                          "value": ""
                        },
                        "link": {
                          "type": "url",
                          "value": ""
                        }
                      }
                    },
                    {
                      "type": "gallery_image",
                      "name": "Image",
                      "props": {
                        "image": {
                          "type": "image_picker",
                          "value": ""
                        },
                        "caption": {
                          "type": "text",
                          "value": ""
                        },
                        "link": {
                          "type": "url",
                          "value": ""
                        }
                      }
                    },
                    {
                      "type": "gallery_image",
                      "name": "Image",
                      "props": {
                        "image": {
                          "type": "image_picker",
                          "value": ""
                        },
                        "caption": {
                          "type": "text",
                          "value": ""
                        },
                        "link": {
                          "type": "url",
                          "value": ""
                        }
                      }
                    },
                    {
                      "type": "gallery_image",
                      "name": "Image",
                      "props": {
                        "image": {
                          "type": "image_picker",
                          "value": ""
                        },
                        "caption": {
                          "type": "text",
                          "value": ""
                        },
                        "link": {
                          "type": "url",
                          "value": ""
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
                      "exact_url": ""
                    }
                  },
                  "name": "image_gallery",
                  "props": {
                    "title": {
                      "type": "text",
                      "value": "Popular Brands"
                    },
                    "layout": {
                      "value": "grid",
                      "type": "select"
                    },
                    "item_count": {
                      "value": 4,
                      "type": "range"
                    },
                    "cta_text": {
                      "value": "",
                      "type": "text"
                    },
                    "cta_link": {
                      "type": "url",
                      "value": ""
                    },
                    "full_width": {
                      "value": false,
                      "type": "checkbox"
                    }
                  },
                  "preset": {
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
                      "exact_url": ""
                    }
                  },
                  "name": "brands_listing",
                  "props": {
                    "brand_type": {
                      "value": "all",
                      "type": "radio"
                    },
                    "cta_text": {
                      "value": "View all",
                      "type": "text"
                    },
                    "department": {
                      "type": "department"
                    },
                    "header": {
                      "type": "header"
                    },
                    "items_per_row": {
                      "value": 5,
                      "type": "range"
                    },
                    "layout": {
                      "value": "horizontal",
                      "type": "select"
                    },
                    "title": {
                      "type": "text",
                      "value": "Brands"
                    },
                    "view_options": {
                      "value": "fullview",
                      "type": "select"
                    }
                  }
                },
                {
                  "blocks": [
                    {
                      "type": "testimonial",
                      "name": "Testimonial",
                      "props": {
                        "testimonialText": {
                          "type": "textarea",
                          "value": ""
                        },
                        "author_name": {
                          "type": "text"
                        },
                        "author_description": {
                          "type": "text",
                          "value": ""
                        },
                        "author_image": {
                          "type": "image_picker",
                          "value": ""
                        }
                      }
                    },
                    {
                      "type": "testimonial",
                      "name": "Testimonial",
                      "props": {
                        "testimonialText": {
                          "type": "textarea",
                          "value": ""
                        },
                        "author_name": {
                          "type": "text"
                        },
                        "author_description": {
                          "type": "text",
                          "value": ""
                        },
                        "author_image": {
                          "type": "image_picker",
                          "value": ""
                        }
                      }
                    },
                    {
                      "type": "testimonial",
                      "name": "Testimonial",
                      "props": {
                        "testimonialText": {
                          "type": "textarea",
                          "value": ""
                        },
                        "author_name": {
                          "type": "text"
                        },
                        "author_description": {
                          "type": "text",
                          "value": ""
                        },
                        "author_image": {
                          "type": "image_picker",
                          "value": ""
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
                      "exact_url": ""
                    }
                  },
                  "name": "testimonials",
                  "props": {
                    "autoplay": {
                      "value": false,
                      "type": "checkbox"
                    },
                    "slide_interval": {
                      "value": 2,
                      "type": "range"
                    }
                  },
                  "preset": {
                    "blocks": [
                      {
                        "name": "Testimonial"
                      },
                      {
                        "name": "Testimonial"
                      },
                      {
                        "name": "Testimonial"
                      }
                    ]
                  }
                }
              ],
              "value": "home"
            }
          ]
        },
        "global_schema": {
          "props": [
            {
              "type": "checkbox",
              "id": "disable_cart",
              "category": "Colors",
              "label": "header"
            }
          ]
        }
      },
      "available_sections": [
        {
          "props": [
            {
              "type": "url",
              "id": "banner_link",
              "label": "Redirect Link"
            },
            {
              "type": "checkbox",
              "id": "full_width",
              "label": "Full width",
              "info": "Check to allow items to take entire width of the viewport"
            },
            {
              "type": "range",
              "id": "margin_top",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Top Margin"
            },
            {
              "type": "range",
              "id": "margin_bottom",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Bottom Margin"
            }
          ],
          "blocks": [],
          "name": "application_banner",
          "label": "Application Banner"
        },
        {
          "props": [
            {
              "type": "text",
              "id": "title",
              "label": "Title"
            },
            {
              "type": "range",
              "id": "margin_top",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Top Margin"
            },
            {
              "type": "range",
              "id": "margin_bottom",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Bottom Margin"
            },
            {
              "type": "header",
              "id": "header",
              "value": "Choose Brands to Show"
            },
            {
              "id": "view_options",
              "type": "select",
              "options": [
                {
                  "value": "logo",
                  "text": "Logo View"
                },
                {
                  "value": "fullview",
                  "text": "Logo and Banner View"
                }
              ],
              "label": "View Options",
              "info": "Brand card view options"
            },
            {
              "type": "radio",
              "id": "brand_type",
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
              "id": "items_per_row",
              "min": 3,
              "max": 5,
              "step": 1,
              "unit": "",
              "label": "Items per row",
              "info": "Maximum items allowed per row"
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
              "label": "Layout",
              "info": "Alignment of content"
            },
            {
              "type": "text",
              "id": "cta_text",
              "label": "CTA Text"
            }
          ],
          "blocks": [
            {
              "type": "brand_item",
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
          "name": "brands_listing",
          "label": "Brands Listing"
        },
        {
          "props": [
            {
              "type": "text",
              "id": "title",
              "label": "Title"
            },
            {
              "type": "range",
              "id": "margin_top",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Top Margin"
            },
            {
              "type": "range",
              "id": "margin_bottom",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Bottom Margin"
            },
            {
              "type": "radio",
              "id": "collection_type",
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
              "type": "text",
              "id": "tags_filter",
              "label": "Filter by tags",
              "info": "Filter by Tags "
            },
            {
              "type": "range",
              "id": "items_per_row",
              "min": 3,
              "max": 5,
              "step": 1,
              "unit": "",
              "label": "Max items per row",
              "info": "Maximum items allowed per row"
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
              "label": "Layout",
              "info": "Alignment of content"
            },
            {
              "type": "text",
              "id": "cta_text",
              "label": "CTA Text"
            }
          ],
          "blocks": [
            {
              "type": "collection-item",
              "name": "collection Item",
              "props": [
                {
                  "type": "collection",
                  "id": "collection",
                  "label": "Select Collection"
                }
              ]
            }
          ],
          "name": "collections_listing",
          "label": "Collections Listing"
        },
        {
          "props": [
            {
              "type": "code",
              "id": "code",
              "label": "Custom HTML",
              "info": "Add Your custom HTML Code below. You can also use the full screen icon to open a code editor and add your code"
            },
            {
              "type": "range",
              "id": "margin_top",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Top Margin"
            },
            {
              "type": "range",
              "id": "margin_bottom",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Bottom Margin"
            }
          ],
          "blocks": [],
          "name": "custom_html",
          "label": "Custom HTML"
        },
        {
          "props": [
            {
              "type": "extension",
              "id": "extension",
              "label": "Extension Positions",
              "info": "Handle extension in these positions",
              "positions": [
                {
                  "value": "section_extension",
                  "text": ""
                }
              ]
            },
            {
              "type": "range",
              "id": "margin_top",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Top Margin"
            },
            {
              "type": "range",
              "id": "margin_bottom",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Bottom Margin"
            }
          ],
          "blocks": [],
          "name": "section_extension",
          "label": "Extensions"
        },
        {
          "props": [
            {
              "type": "text",
              "id": "title",
              "label": "Title"
            },
            {
              "type": "range",
              "id": "margin_top",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Top Margin"
            },
            {
              "type": "range",
              "id": "margin_bottom",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Bottom Margin"
            },
            {
              "type": "collection",
              "id": "collection",
              "label": "Collection",
              "info": "Select a collection to display its products"
            },
            {
              "type": "range",
              "id": "items_per_row",
              "min": 2,
              "max": 5,
              "step": 1,
              "unit": "",
              "label": "Products per row",
              "info": "Maximum items allowed per row"
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
              "label": "Layout",
              "info": "Alignment of content"
            },
            {
              "type": "checkbox",
              "id": "autoplay",
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
              "info": "Autoplay slide duration"
            }
          ],
          "blocks": [],
          "name": "featured_collection",
          "label": "Featured Collection"
        },
        {
          "props": [
            {
              "id": "image",
              "type": "image_picker",
              "label": "Hero Image"
            },
            {
              "type": "range",
              "id": "margin_top",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Top Margin"
            },
            {
              "type": "range",
              "id": "margin_bottom",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Bottom Margin"
            },
            {
              "id": "overlay_layout",
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
              "label": "Overlay Layout",
              "info": "Alignment of overlay content"
            },
            {
              "type": "image_picker",
              "id": "overlay_image",
              "label": "Overlay image",
              "info": "Overlay Image"
            },
            {
              "type": "text",
              "id": "overlay_text",
              "label": "Overlay Text"
            },
            {
              "type": "color",
              "id": "text_color",
              "label": "Text Color"
            },
            {
              "type": "url",
              "id": "button_link",
              "label": "Redirect Link"
            },
            {
              "type": "text",
              "id": "button_text",
              "label": "Button Text"
            },
            {
              "type": "checkbox",
              "id": "full_width",
              "label": "Full width",
              "info": "Check to allow items to take entire width of the viewport"
            },
            {
              "type": "checkbox",
              "id": "fullscreen_image",
              "label": "Fullscreen Banner ",
              "info": "Check to allow items to take entire viewport"
            }
          ],
          "blocks": [],
          "name": "hero_image",
          "label": "Hero Image"
        },
        {
          "props": [
            {
              "type": "video",
              "id": "videoFile",
              "label": "Primary Video"
            },
            {
              "id": "videoUrl",
              "type": "text",
              "label": "Video URL",
              "info": "Supports MP4 Video & Youtube Video URL"
            },
            {
              "type": "checkbox",
              "id": "autoplay",
              "label": "Autoplay",
              "info": "Check to enable autoplay (Video will be muted if autoplay is active)"
            },
            {
              "type": "checkbox",
              "id": "hidecontrols",
              "label": "Hide Video Controls",
              "info": "check to disable video controls"
            },
            {
              "type": "checkbox",
              "id": "showloop",
              "label": "Play Video in Loop",
              "info": "check to disable Loop"
            },
            {
              "type": "text",
              "id": "title",
              "label": "Heading"
            },
            {
              "id": "coverUrl",
              "type": "image_picker",
              "label": "Thumbnail Image"
            }
          ],
          "blocks": [],
          "name": "hero_video-v2",
          "label": "Hero Video V2"
        },
        {
          "props": [
            {
              "id": "video_url",
              "type": "text",
              "label": "Video URL",
              "info": "Supports MP4 Video & Youtube Video URL"
            },
            {
              "type": "range",
              "id": "margin_top",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Top Margin"
            },
            {
              "type": "range",
              "id": "margin_bottom",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Bottom Margin"
            },
            {
              "type": "checkbox",
              "id": "autoplay",
              "label": "Autoplay",
              "info": "Check to enable autoplay (Video will be muted if autoplay is active)"
            },
            {
              "type": "checkbox",
              "id": "controls",
              "label": "Video Controls",
              "info": "Uncheck to disable video controls"
            },
            {
              "type": "checkbox",
              "id": "full_width",
              "label": "Full width",
              "info": "Check to allow items to take entire width of the viewport"
            },
            {
              "type": "checkbox",
              "id": "bg_video",
              "label": "Video In Background",
              "info": "Use video in background with overlay (Overlay Image & Video Controls will be disabled by default on website)"
            },
            {
              "type": "select",
              "id": "size",
              "options": [
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
                },
                {
                  "value": "adapt",
                  "text": "Adapt"
                },
                {
                  "value": "fullscreen",
                  "text": "Fullscreen"
                }
              ],
              "label": "Video Height",
              "info": "Height of Video"
            },
            {
              "type": "checkbox",
              "id": "enable_overlay_image",
              "label": "Enable Overlay Image"
            },
            {
              "id": "cover_url",
              "type": "image_picker",
              "label": "Video Overlay Image"
            },
            {
              "type": "checkbox",
              "id": "enable_overlay_color",
              "label": "Enable Overlay Colour"
            },
            {
              "type": "color",
              "id": "overlay_color",
              "label": "Overlay Color"
            },
            {
              "type": "range",
              "id": "overlay_opacity",
              "min": 0,
              "max": 1,
              "step": 0.1,
              "unit": "",
              "label": "Overlay Opacity"
            },
            {
              "type": "select",
              "id": "overlay_size",
              "options": [
                {
                  "value": "container",
                  "text": "Container (Default)"
                },
                {
                  "value": "content",
                  "text": "Content"
                }
              ],
              "label": "Overlay Size"
            },
            {
              "id": "overlay_position",
              "type": "select",
              "options": [
                {
                  "value": "top-left",
                  "text": "Top Left"
                },
                {
                  "value": "top-center",
                  "text": "Top Center"
                },
                {
                  "value": "top-right",
                  "text": "Top Right"
                },
                {
                  "value": "center-left",
                  "text": "Center Left"
                },
                {
                  "value": "center-center",
                  "text": "Center (Default)"
                },
                {
                  "value": "center-right",
                  "text": "Center Right"
                },
                {
                  "value": "bottom-left",
                  "text": "Bottom Left"
                },
                {
                  "value": "bottom-center",
                  "text": "Bottom Center"
                },
                {
                  "value": "bottom-right",
                  "text": "Bottom right"
                }
              ],
              "label": "Overlay position",
              "info": "Alignment of Overlay content(heading, sub-heading, button)"
            },
            {
              "type": "text",
              "id": "heading",
              "label": "Heading"
            },
            {
              "type": "color",
              "id": "heading_color",
              "label": "Heading Text Color"
            },
            {
              "type": "text",
              "id": "sub_heading",
              "label": "Sub-heading"
            },
            {
              "type": "color",
              "id": "sub_heading_color",
              "label": "Sub-heading Text Color"
            },
            {
              "type": "url",
              "id": "button_link",
              "label": "Redirect Link"
            },
            {
              "type": "text",
              "id": "button_text",
              "label": "Button Text"
            }
          ],
          "blocks": [],
          "name": "hero_video",
          "label": "Hero Video"
        },
        {
          "props": [
            {
              "type": "text",
              "id": "title",
              "label": "Title"
            },
            {
              "type": "range",
              "id": "margin_top",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Top Margin"
            },
            {
              "type": "range",
              "id": "margin_bottom",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Bottom Margin"
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
              "label": "Layout",
              "info": "Alignment of content"
            },
            {
              "type": "range",
              "id": "item_count",
              "min": 3,
              "max": 4,
              "step": 1,
              "unit": "",
              "label": "No of items",
              "info": "Maximum items allowed per row for Horizontal view, for gallery max 5 are viewable and only 5 blocks are required"
            },
            {
              "type": "text",
              "id": "cta_text",
              "label": "CTA Text"
            },
            {
              "type": "url",
              "id": "cta_link",
              "label": "CTA Link",
              "info": "Link to redirect"
            },
            {
              "type": "checkbox",
              "id": "full_width",
              "label": "Full width",
              "info": "Check to allow items to take entire width of the viewport"
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
                  "type": "text",
                  "id": "caption",
                  "label": "Image Caption"
                },
                {
                  "type": "url",
                  "id": "link",
                  "label": "Link",
                  "info": "Link to redirect"
                }
              ]
            }
          ],
          "name": "image_gallery",
          "label": "Image Gallery",
          "preset": {
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
              "type": "text",
              "id": "title",
              "label": "Title"
            },
            {
              "type": "range",
              "id": "margin_top",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Top Margin"
            },
            {
              "type": "range",
              "id": "margin_bottom",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Bottom Margin"
            },
            {
              "type": "checkbox",
              "id": "autoplay",
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
              "info": "Autoplay slide duration"
            },
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
              "label": "Slide height",
              "info": "Size of the slide"
            },
            {
              "type": "checkbox",
              "id": "full_width",
              "label": "Full width",
              "info": "Check to allow items to take entire width of the viewport"
            }
          ],
          "blocks": [
            {
              "type": "image_slide",
              "name": "Slide",
              "props": [
                {
                  "type": "image_picker",
                  "id": "image",
                  "label": "Image"
                },
                {
                  "type": "url",
                  "id": "slide_link",
                  "label": "Slide Link"
                }
              ]
            }
          ],
          "name": "image_slideshow",
          "label": "Image Slideshow",
          "preset": {
            "blocks": [
              {
                "name": "Slide"
              },
              {
                "name": "Slide"
              },
              {
                "name": "Slide"
              }
            ]
          }
        },
        {
          "props": [
            {
              "type": "image_picker",
              "id": "image",
              "label": "Image"
            },
            {
              "id": "video",
              "type": "url",
              "label": "Video"
            },
            {
              "type": "range",
              "id": "margin_top",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Top Margin"
            },
            {
              "type": "range",
              "id": "margin_bottom",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Bottom Margin"
            },
            {
              "id": "cover",
              "type": "url",
              "label": "Video Cover Image"
            },
            {
              "type": "select",
              "id": "media_alignment",
              "options": [
                {
                  "value": "left",
                  "text": "Left"
                },
                {
                  "value": "center",
                  "text": "Center"
                },
                {
                  "value": "right",
                  "text": "Right"
                }
              ],
              "label": "Media Alignment"
            },
            {
              "type": "text",
              "id": "heading",
              "label": "Heading"
            },
            {
              "type": "text",
              "id": "text Pair large text with an image to give focus to your chosen product, collection, or blog post. Add details on availability, style, or even provide a review.",
              "label": "Text"
            },
            {
              "type": "select",
              "id": "text_alignment",
              "options": [
                {
                  "value": "left",
                  "text": "Left"
                },
                {
                  "value": "center",
                  "text": "Center"
                },
                {
                  "value": "right",
                  "text": "Right"
                }
              ],
              "label": "Text Alignment"
            }
          ],
          "blocks": [],
          "name": "media_with_text",
          "label": "Media with text"
        },
        {
          "props": [
            {
              "type": "text",
              "id": "title",
              "label": "Title"
            },
            {
              "type": "range",
              "id": "margin_top",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Top Margin"
            },
            {
              "type": "range",
              "id": "margin_bottom",
              "min": 0,
              "max": 1000,
              "step": 1,
              "unit": "px",
              "label": "Section Bottom Margin"
            },
            {
              "type": "checkbox",
              "id": "autoplay",
              "label": "AutoPlay Slides"
            },
            {
              "type": "range",
              "id": "slide_interval",
              "min": 1,
              "max": 10,
              "step": 1,
              "unit": "sec",
              "label": "Change slides every"
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
                  "info": "Text for testimonial",
                  "placeholder": "Text"
                },
                {
                  "type": "text",
                  "id": "author_name",
                  "label": "Author name"
                },
                {
                  "type": "text",
                  "id": "author_description",
                  "label": "Author Description"
                },
                {
                  "type": "image_picker",
                  "id": "author_image",
                  "label": "Author Image"
                }
              ]
            }
          ],
          "name": "testimonials",
          "label": "Testimonial",
          "preset": {
            "blocks": [
              {
                "name": "Testimonial"
              },
              {
                "name": "Testimonial"
              },
              {
                "name": "Testimonial"
              }
            ]
          }
        }
      ],
      "src": "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/Gpbt5naNG-archive.zip"
    }
  ]
}
```
</details>

</details>









---


#### getThemeById
Get Theme By Theme Id




```swift
partnerClient.theme.getThemeById(themeId: themeId, organizationId: organizationId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| themeId | String | yes | The ID of the theme |   
| organizationId | String | yes | Organization ID |  



Use this API to get theme details

*Returned Response:*




[ThemesSchema](#ThemesSchema)

The Details of themes for the application was fetched successfully.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### updateTheme
Update theme for a specific company and application




```swift
partnerClient.theme.updateTheme(themeId: themeId, organizationId: organizationId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| themeId | String | yes | The ID of the theme. |   
| organizationId | String | yes | Organization ID |  
| body | UpdateThemeRequestBody | yes | Request body |


Update theme for a specific company and application

*Returned Response:*




[ThemesSchema](#ThemesSchema)

Theme updated successfully




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; example1</i></summary>

```json
{
  "value": {
    "_id": "64be4423bc7b28003211322e",
    "applied": false,
    "is_private": false,
    "tags": [],
    "application_id": "6487ea376e1442284917c44e",
    "marketplace_theme_id": "64be1f4cceb549012e93d5f4",
    "meta": {
      "payment": {
        "is_paid": false,
        "amount": 0
      },
      "description": "Indulge in the epitome of luxury with our expertly crafted theme, showcasing a high-end aesthetic that exudes elegance. Designed with meticulous attention to detail, our features are tailored to elevate your products and amplify your brand identity.",
      "industry": [
        "Arts and crafts",
        "Baby and kids",
        "Books, music, and video"
      ],
      "release": {
        "notes": "<p>Emerge release notes. Fyndx1 theme submission.</p>"
      },
      "images": {
        "desktop": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/McHjwol_h-images_desktop.webp",
        "mobile": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/bq6gXrmVE-images_mobile.webp"
      },
      "slug": "emerge"
    },
    "name": "Emerge",
    "template_theme_id": "64be1fdc2139f66b3ca2e94d",
    "version": "1.0.153",
    "styles": {},
    "created_at": "2023-07-24T09:28:03.845Z",
    "updated_at": "2023-07-31T12:14:13.097Z",
    "theme_type": "vue2",
    "assets": {
      "umd_js": {
        "links": [
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_themeBundle.umd.min.8.js",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_themeBundle.umd.min.cart.js",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_themeBundle.umd.min.extras.js",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_themeBundle.umd.min.products-listing.js",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_themeBundle.umd.min.products.js",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_themeBundle.umd.min.profile.js",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_themeBundle.umd.min.vendors_products-listing.js",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_themeBundle.umd.min.vendors_products.js",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_themeBundle.umd.min.js"
        ],
        "link": ""
      },
      "common_js": {
        "link": "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_themeBundle.common.js"
      },
      "css": {
        "links": [
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_cart.1b038cd83e502f2d58bc.css",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_extras.f8a9789ae6a06b0bd503.css",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_products-listing.1d639747568baee211ba.css",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_products.c1f151d12b3f704fe028.css",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_profile.c9e6a92612e4b423dbd7.css",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_themeBundle.css",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_vendors_products-listing.c8fe85761d60286348e3.css"
        ],
        "link": ""
      }
    },
    "font": {
      "variants": {
        "light": {
          "name": "300",
          "file": "https://fonts.gstatic.com/s/poppins/v9/pxiByp8kv8JHgFVrLDz8V1tvFP-KUEg.ttf"
        },
        "regular": {
          "name": "regular",
          "file": "https://fonts.gstatic.com/s/poppins/v9/pxiEyp8kv8JHgFVrFJDUc1NECPY.ttf"
        },
        "medium": {
          "name": "500",
          "file": "https://fonts.gstatic.com/s/poppins/v9/pxiByp8kv8JHgFVrLGT9V1tvFP-KUEg.ttf"
        },
        "semi_bold": {
          "name": "600",
          "file": "https://fonts.gstatic.com/s/poppins/v9/pxiByp8kv8JHgFVrLEj6V1tvFP-KUEg.ttf"
        },
        "bold": {
          "name": "700",
          "file": "https://fonts.gstatic.com/s/poppins/v9/pxiByp8kv8JHgFVrLCz7V1tvFP-KUEg.ttf"
        }
      },
      "family": "Poppins"
    },
    "config": {
      "current": "Default",
      "list": [
        {
          "name": "Default",
          "global_config": {
            "static": {
              "props": {
                "colors": {
                  "primary_color": "#000000",
                  "secondary_color": "#000000",
                  "accent_color": "#000000",
                  "link_color": "#4499FF",
                  "button_secondary_color": "#000000",
                  "bg_color": "#F8F8F8"
                },
                "auth": {
                  "show_header_auth": false,
                  "show_footer_auth": false
                },
                "palette": {
                  "general_setting": {
                    "theme": {
                      "page_background": "#F3F3ED",
                      "theme_accent": "#E1D0C8"
                    },
                    "text": {
                      "text_heading": "#26201A",
                      "text_body": "#3C3131",
                      "text_label": "#7D7676",
                      "text_secondary": "#9C9C9C"
                    },
                    "button": {
                      "button_primary": "#4E3F09",
                      "button_secondary": "#FFFFFF",
                      "button_link": "#B1655B"
                    },
                    "sale_discount": {
                      "sale_badge_background": "#FFFFFF",
                      "sale_badge_text": "#1C958F",
                      "sale_discount_text": "#1C958F",
                      "sale_timer": "#994449"
                    },
                    "header": {
                      "header_background": "#F3F3ED",
                      "header_nav": "#261A1A",
                      "header_icon": "#261A1A"
                    },
                    "footer": {
                      "footer_background": "#2C231E",
                      "footer_bottom_background": "#231812",
                      "footer_heading_text": "#FFFFFF",
                      "footer_body_text": "#FFFFFF",
                      "footer_icon": "#FFFFFF"
                    }
                  },
                  "advance_setting": {
                    "overlay_popup": {
                      "dialog_backgroung": "#FFFFFF",
                      "overlay": "#14130E"
                    },
                    "divider_stroke_highlight": {
                      "divider_strokes": "#D4D1D1",
                      "highlight": "#EDECE9"
                    },
                    "user_alerts": {
                      "success_background": "#C2DBC9",
                      "success_text": "#1C958F",
                      "error_background": "#E6D5D5",
                      "error_text": "#B24141",
                      "info_background": "#EBD3BC",
                      "info_text": "#D28F51"
                    }
                  }
                },
                "extension": {
                  "header_top": [],
                  "header_bottom": [],
                  "footer_top": [],
                  "footer_bottom": []
                }
              }
            },
            "custom": {
              "props": {
                "header_bg_color": "#ffffff",
                "header_text_color": "#000000",
                "header_border_color": "#e1e1e1",
                "header_icon_color": "#000000",
                "header_cart_notification_bg_color": "#e8a76c",
                "header_cart_notification_text_color": "#ffffff",
                "header_nav_hover_color": "#999999",
                "button_primary_color": "#ffffff",
                "button_primary_label_color": "#000000",
                "button_add_to_cart_color": "#000000",
                "button_add_to_cart_label_color": "#ffffff",
                "button_secondary_color": "#000000",
                "button_secondary_label_color": "#ffffff",
                "button_tertiary_color": "#000000",
                "button_tertiary_label_color": "#000000",
                "button_tertiary_hover_color": "#000000",
                "button_tertiary_hover_text_color": "#ffffff",
                "text_heading_link_color": "#000000",
                "text_body_color": "#000000",
                "text_price_color": "#000000",
                "text_sale_price_color": "#fb406b",
                "text_strikethrough_price_color": "#9b9b9b",
                "text_discount_color": "#ee478d",
                "footer_bg_color": "#ffffff",
                "footer_text_color": "#999999",
                "footer_border_color": "#e1e1e1",
                "footer_nav_hover_color": "#000000",
                "disable_cart": false,
                "is_menu_below_logo": false,
                "menu_position": "left"
              }
            }
          },
          "page": []
        },
        {
          "name": "Dark",
          "global_config": {
            "static": {
              "props": {
                "colors": {
                  "primary_color": "#000000",
                  "secondary_color": "#000000",
                  "accent_color": "#000000",
                  "link_color": "#4499FF",
                  "button_secondary_color": "#000000",
                  "bg_color": "#F8F8F8"
                },
                "auth": {
                  "show_header_auth": false,
                  "show_footer_auth": false
                },
                "palette": {
                  "general_setting": {
                    "theme": {
                      "page_background": "#F3F3ED",
                      "theme_accent": "#E1D0C8"
                    },
                    "text": {
                      "text_heading": "#26201A",
                      "text_body": "#3C3131",
                      "text_label": "#7D7676",
                      "text_secondary": "#9C9C9C"
                    },
                    "button": {
                      "button_primary": "#4E3F09",
                      "button_secondary": "#FFFFFF",
                      "button_link": "#B1655B"
                    },
                    "sale_discount": {
                      "sale_badge_background": "#FFFFFF",
                      "sale_badge_text": "#1C958F",
                      "sale_discount_text": "#1C958F",
                      "sale_timer": "#994449"
                    },
                    "header": {
                      "header_background": "#F3F3ED",
                      "header_nav": "#261A1A",
                      "header_icon": "#261A1A"
                    },
                    "footer": {
                      "footer_background": "#2C231E",
                      "footer_bottom_background": "#231812",
                      "footer_heading_text": "#FFFFFF",
                      "footer_body_text": "#FFFFFF",
                      "footer_icon": "#FFFFFF"
                    }
                  },
                  "advance_setting": {
                    "overlay_popup": {
                      "dialog_backgroung": "#FFFFFF",
                      "overlay": "#14130E"
                    },
                    "divider_stroke_highlight": {
                      "divider_strokes": "#D4D1D1",
                      "highlight": "#EDECE9"
                    },
                    "user_alerts": {
                      "success_background": "#C2DBC9",
                      "success_text": "#1C958F",
                      "error_background": "#E6D5D5",
                      "error_text": "#B24141",
                      "info_background": "#EBD3BC",
                      "info_text": "#D28F51"
                    }
                  }
                },
                "extension": {
                  "header_top": [],
                  "header_bottom": [],
                  "footer_top": [],
                  "footer_bottom": []
                }
              }
            },
            "custom": {
              "props": {
                "header_bg_color": "#2e3032",
                "header_text_color": "#ffffff",
                "header_border_color": "#FFFFFF",
                "header_icon_color": "#ffffff",
                "header_cart_notification_bg_color": "#FFFFFF",
                "header_cart_notification_text_color": "#2e3032",
                "header_nav_hover_color": "#000000",
                "button_primary_color": "#000000",
                "button_primary_label_color": "#ffffff",
                "button_add_to_cart_color": "#000000",
                "button_add_to_cart_label_color": "#ffffff",
                "button_secondary_color": "#000000",
                "button_secondary_label_color": "#ffffff",
                "button_tertiary_color": "#000000",
                "button_tertiary_label_color": "#000000",
                "button_tertiary_hover_color": "#000000",
                "button_tertiary_hover_text_color": "#ffffff",
                "text_heading_link_color": "#000000",
                "text_body_color": "#000000",
                "text_price_color": "#000000",
                "text_sale_price_color": "#fb406b",
                "text_strikethrough_price_color": "#9b9b9b",
                "text_discount_color": "#ee478d",
                "footer_bg_color": "#2e3032",
                "footer_text_color": "#ffffff",
                "footer_border_color": "#FFFFFF",
                "footer_nav_hover_color": "#ffffff"
              }
            }
          },
          "page": []
        },
        {
          "name": "Blue",
          "global_config": {
            "static": {
              "props": {
                "colors": {
                  "primary_color": "#000000",
                  "secondary_color": "#000000",
                  "accent_color": "#000000",
                  "link_color": "#4499FF",
                  "button_secondary_color": "#000000",
                  "bg_color": "#F8F8F8"
                },
                "auth": {
                  "show_header_auth": false,
                  "show_footer_auth": false
                },
                "palette": {
                  "general_setting": {
                    "theme": {
                      "page_background": "#F3F3ED",
                      "theme_accent": "#E1D0C8"
                    },
                    "text": {
                      "text_heading": "#26201A",
                      "text_body": "#3C3131",
                      "text_label": "#7D7676",
                      "text_secondary": "#9C9C9C"
                    },
                    "button": {
                      "button_primary": "#4E3F09",
                      "button_secondary": "#FFFFFF",
                      "button_link": "#B1655B"
                    },
                    "sale_discount": {
                      "sale_badge_background": "#FFFFFF",
                      "sale_badge_text": "#1C958F",
                      "sale_discount_text": "#1C958F",
                      "sale_timer": "#994449"
                    },
                    "header": {
                      "header_background": "#F3F3ED",
                      "header_nav": "#261A1A",
                      "header_icon": "#261A1A"
                    },
                    "footer": {
                      "footer_background": "#2C231E",
                      "footer_bottom_background": "#231812",
                      "footer_heading_text": "#FFFFFF",
                      "footer_body_text": "#FFFFFF",
                      "footer_icon": "#FFFFFF"
                    }
                  },
                  "advance_setting": {
                    "overlay_popup": {
                      "dialog_backgroung": "#FFFFFF",
                      "overlay": "#14130E"
                    },
                    "divider_stroke_highlight": {
                      "divider_strokes": "#D4D1D1",
                      "highlight": "#EDECE9"
                    },
                    "user_alerts": {
                      "success_background": "#C2DBC9",
                      "success_text": "#1C958F",
                      "error_background": "#E6D5D5",
                      "error_text": "#B24141",
                      "info_background": "#EBD3BC",
                      "info_text": "#D28F51"
                    }
                  }
                },
                "extension": {
                  "header_top": [],
                  "header_bottom": [],
                  "footer_top": [],
                  "footer_bottom": []
                }
              }
            },
            "custom": {
              "props": {
                "header_bg_color": "#7f9ed0",
                "header_text_color": "#FFFFFF",
                "header_border_color": "#FFFFFF",
                "header_icon_color": "#FFFFFF",
                "header_cart_notification_bg_color": "#2e3032",
                "header_cart_notification_text_color": "#FFFFFF",
                "header_nav_hover_color": "#2e3032",
                "button_primary_color": "#ffffff",
                "button_primary_label_color": "#000000",
                "button_add_to_cart_color": "#000000",
                "button_add_to_cart_label_color": "#ffffff",
                "button_secondary_color": "#000000",
                "button_secondary_label_color": "#ffffff",
                "button_tertiary_color": "#000000",
                "button_tertiary_label_color": "#000000",
                "button_tertiary_hover_color": "#000000",
                "button_tertiary_hover_text_color": "#ffffff",
                "text_heading_link_color": "#000000",
                "text_body_color": "#000000",
                "text_price_color": "#000000",
                "text_sale_price_color": "#fb406b",
                "text_strikethrough_price_color": "#9b9b9b",
                "text_discount_color": "#ee478d",
                "footer_bg_color": "#7f9ed0",
                "footer_text_color": "#FFFFFF",
                "footer_border_color": "#FFFFFF",
                "footer_nav_hover_color": "#2e3032"
              }
            }
          },
          "page": []
        }
      ],
      "preset": {
        "pages": [
          {
            "sections": [
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
                    "exact_url": ""
                  }
                },
                "name": "hero_image",
                "props": {
                  "image": {
                    "value": "",
                    "type": "image_picker"
                  },
                  "overlay_layout": {
                    "type": "select",
                    "value": "center"
                  },
                  "overlay_image": {
                    "value": "",
                    "type": "image_picker"
                  },
                  "overlay_text": {
                    "value": "",
                    "type": "text"
                  },
                  "text_color": {
                    "value": "#000",
                    "type": "color"
                  },
                  "button_link": {
                    "type": "url",
                    "value": ""
                  },
                  "button_text": {
                    "value": "Shop Now",
                    "type": "text"
                  },
                  "full_width": {
                    "value": true,
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
                    "exact_url": ""
                  }
                },
                "name": "image_slideshow",
                "props": {
                  "autoplay": {
                    "value": false,
                    "type": "checkbox"
                  },
                  "full_width": {
                    "value": false,
                    "type": "checkbox"
                  },
                  "slide_height": {
                    "value": "adapt",
                    "type": "select"
                  },
                  "slide_interval": {
                    "value": 2,
                    "type": "range"
                  },
                  "title": {
                    "value": "Trending",
                    "type": "text"
                  }
                },
                "preset": {
                  "blocks": [
                    {
                      "name": "Slide"
                    },
                    {
                      "name": "Slide"
                    },
                    {
                      "name": "Slide"
                    }
                  ]
                }
              },
              {
                "blocks": [
                  {
                    "type": "gallery_image",
                    "name": "Image",
                    "props": {
                      "image": {
                        "type": "image_picker",
                        "value": ""
                      },
                      "caption": {
                        "type": "text",
                        "value": ""
                      },
                      "link": {
                        "type": "url",
                        "value": ""
                      }
                    }
                  },
                  {
                    "type": "gallery_image",
                    "name": "Image",
                    "props": {
                      "image": {
                        "type": "image_picker",
                        "value": ""
                      },
                      "caption": {
                        "type": "text",
                        "value": ""
                      },
                      "link": {
                        "type": "url",
                        "value": ""
                      }
                    }
                  },
                  {
                    "type": "gallery_image",
                    "name": "Image",
                    "props": {
                      "image": {
                        "type": "image_picker",
                        "value": ""
                      },
                      "caption": {
                        "type": "text",
                        "value": ""
                      },
                      "link": {
                        "type": "url",
                        "value": ""
                      }
                    }
                  },
                  {
                    "type": "gallery_image",
                    "name": "Image",
                    "props": {
                      "image": {
                        "type": "image_picker",
                        "value": ""
                      },
                      "caption": {
                        "type": "text",
                        "value": ""
                      },
                      "link": {
                        "type": "url",
                        "value": ""
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
                    "exact_url": ""
                  }
                },
                "name": "image_gallery",
                "props": {
                  "title": {
                    "type": "text",
                    "value": "Popular Brands"
                  },
                  "layout": {
                    "value": "grid",
                    "type": "select"
                  },
                  "item_count": {
                    "value": 4,
                    "type": "range"
                  },
                  "cta_text": {
                    "value": "",
                    "type": "text"
                  },
                  "cta_link": {
                    "type": "url",
                    "value": ""
                  },
                  "full_width": {
                    "value": false,
                    "type": "checkbox"
                  }
                },
                "preset": {
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
                    "exact_url": ""
                  }
                },
                "name": "brands_listing",
                "props": {
                  "brand_type": {
                    "value": "all",
                    "type": "radio"
                  },
                  "cta_text": {
                    "value": "View all",
                    "type": "text"
                  },
                  "department": {
                    "type": "department"
                  },
                  "header": {
                    "type": "header"
                  },
                  "items_per_row": {
                    "value": 5,
                    "type": "range"
                  },
                  "layout": {
                    "value": "horizontal",
                    "type": "select"
                  },
                  "title": {
                    "type": "text",
                    "value": "Brands"
                  },
                  "view_options": {
                    "value": "fullview",
                    "type": "select"
                  }
                }
              },
              {
                "blocks": [
                  {
                    "type": "testimonial",
                    "name": "Testimonial",
                    "props": {
                      "testimonialText": {
                        "type": "textarea",
                        "value": ""
                      },
                      "author_name": {
                        "type": "text"
                      },
                      "author_description": {
                        "type": "text",
                        "value": ""
                      },
                      "author_image": {
                        "type": "image_picker",
                        "value": ""
                      }
                    }
                  },
                  {
                    "type": "testimonial",
                    "name": "Testimonial",
                    "props": {
                      "testimonialText": {
                        "type": "textarea",
                        "value": ""
                      },
                      "author_name": {
                        "type": "text"
                      },
                      "author_description": {
                        "type": "text",
                        "value": ""
                      },
                      "author_image": {
                        "type": "image_picker",
                        "value": ""
                      }
                    }
                  },
                  {
                    "type": "testimonial",
                    "name": "Testimonial",
                    "props": {
                      "testimonialText": {
                        "type": "textarea",
                        "value": ""
                      },
                      "author_name": {
                        "type": "text"
                      },
                      "author_description": {
                        "type": "text",
                        "value": ""
                      },
                      "author_image": {
                        "type": "image_picker",
                        "value": ""
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
                    "exact_url": ""
                  }
                },
                "name": "testimonials",
                "props": {
                  "autoplay": {
                    "value": false,
                    "type": "checkbox"
                  },
                  "slide_interval": {
                    "value": 2,
                    "type": "range"
                  }
                },
                "preset": {
                  "blocks": [
                    {
                      "name": "Testimonial"
                    },
                    {
                      "name": "Testimonial"
                    },
                    {
                      "name": "Testimonial"
                    }
                  ]
                }
              }
            ],
            "value": "home"
          }
        ]
      },
      "global_schema": {
        "props": [
          {
            "type": "checkbox",
            "id": "disable_cart",
            "category": "Colors",
            "label": "header"
          }
        ]
      }
    },
    "available_sections": [
      {
        "props": [
          {
            "type": "url",
            "id": "banner_link",
            "label": "Redirect Link"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          }
        ],
        "blocks": [],
        "name": "application_banner",
        "label": "Application Banner"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "title",
            "label": "Title"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          },
          {
            "type": "header",
            "id": "header",
            "value": "Choose Brands to Show"
          },
          {
            "id": "view_options",
            "type": "select",
            "options": [
              {
                "value": "logo",
                "text": "Logo View"
              },
              {
                "value": "fullview",
                "text": "Logo and Banner View"
              }
            ],
            "label": "View Options",
            "info": "Brand card view options"
          },
          {
            "type": "radio",
            "id": "brand_type",
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
            "id": "items_per_row",
            "min": 3,
            "max": 5,
            "step": 1,
            "unit": "",
            "label": "Items per row",
            "info": "Maximum items allowed per row"
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
            "label": "Layout",
            "info": "Alignment of content"
          },
          {
            "type": "text",
            "id": "cta_text",
            "label": "CTA Text"
          }
        ],
        "blocks": [
          {
            "type": "brand_item",
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
        "name": "brands_listing",
        "label": "Brands Listing"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "title",
            "label": "Title"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          },
          {
            "type": "radio",
            "id": "collection_type",
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
            "type": "text",
            "id": "tags_filter",
            "label": "Filter by tags",
            "info": "Filter by Tags "
          },
          {
            "type": "range",
            "id": "items_per_row",
            "min": 3,
            "max": 5,
            "step": 1,
            "unit": "",
            "label": "Max items per row",
            "info": "Maximum items allowed per row"
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
            "label": "Layout",
            "info": "Alignment of content"
          },
          {
            "type": "text",
            "id": "cta_text",
            "label": "CTA Text"
          }
        ],
        "blocks": [
          {
            "type": "collection-item",
            "name": "collection Item",
            "props": [
              {
                "type": "collection",
                "id": "collection",
                "label": "Select Collection"
              }
            ]
          }
        ],
        "name": "collections_listing",
        "label": "Collections Listing"
      },
      {
        "props": [
          {
            "type": "code",
            "id": "code",
            "label": "Custom HTML",
            "info": "Add Your custom HTML Code below. You can also use the full screen icon to open a code editor and add your code"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          }
        ],
        "blocks": [],
        "name": "custom_html",
        "label": "Custom HTML"
      },
      {
        "props": [
          {
            "type": "extension",
            "id": "extension",
            "label": "Extension Positions",
            "info": "Handle extension in these positions",
            "positions": [
              {
                "value": "section_extension",
                "text": ""
              }
            ]
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          }
        ],
        "blocks": [],
        "name": "section_extension",
        "label": "Extensions"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "title",
            "label": "Title"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          },
          {
            "type": "collection",
            "id": "collection",
            "label": "Collection",
            "info": "Select a collection to display its products"
          },
          {
            "type": "range",
            "id": "items_per_row",
            "min": 2,
            "max": 5,
            "step": 1,
            "unit": "",
            "label": "Products per row",
            "info": "Maximum items allowed per row"
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
            "label": "Layout",
            "info": "Alignment of content"
          },
          {
            "type": "checkbox",
            "id": "autoplay",
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
            "info": "Autoplay slide duration"
          }
        ],
        "blocks": [],
        "name": "featured_collection",
        "label": "Featured Collection"
      },
      {
        "props": [
          {
            "id": "image",
            "type": "image_picker",
            "label": "Hero Image"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          },
          {
            "id": "overlay_layout",
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
            "label": "Overlay Layout",
            "info": "Alignment of overlay content"
          },
          {
            "type": "image_picker",
            "id": "overlay_image",
            "label": "Overlay image",
            "info": "Overlay Image"
          },
          {
            "type": "text",
            "id": "overlay_text",
            "label": "Overlay Text"
          },
          {
            "type": "color",
            "id": "text_color",
            "label": "Text Color"
          },
          {
            "type": "url",
            "id": "button_link",
            "label": "Redirect Link"
          },
          {
            "type": "text",
            "id": "button_text",
            "label": "Button Text"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          },
          {
            "type": "checkbox",
            "id": "fullscreen_image",
            "label": "Fullscreen Banner ",
            "info": "Check to allow items to take entire viewport"
          }
        ],
        "blocks": [],
        "name": "hero_image",
        "label": "Hero Image"
      },
      {
        "props": [
          {
            "type": "video",
            "id": "videoFile",
            "label": "Primary Video"
          },
          {
            "id": "videoUrl",
            "type": "text",
            "label": "Video URL",
            "info": "Supports MP4 Video & Youtube Video URL"
          },
          {
            "type": "checkbox",
            "id": "autoplay",
            "label": "Autoplay",
            "info": "Check to enable autoplay (Video will be muted if autoplay is active)"
          },
          {
            "type": "checkbox",
            "id": "hidecontrols",
            "label": "Hide Video Controls",
            "info": "check to disable video controls"
          },
          {
            "type": "checkbox",
            "id": "showloop",
            "label": "Play Video in Loop",
            "info": "check to disable Loop"
          },
          {
            "type": "text",
            "id": "title",
            "label": "Heading"
          },
          {
            "id": "coverUrl",
            "type": "image_picker",
            "label": "Thumbnail Image"
          }
        ],
        "blocks": [],
        "name": "hero_video-v2",
        "label": "Hero Video V2"
      },
      {
        "props": [
          {
            "id": "video_url",
            "type": "text",
            "label": "Video URL",
            "info": "Supports MP4 Video & Youtube Video URL"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          },
          {
            "type": "checkbox",
            "id": "autoplay",
            "label": "Autoplay",
            "info": "Check to enable autoplay (Video will be muted if autoplay is active)"
          },
          {
            "type": "checkbox",
            "id": "controls",
            "label": "Video Controls",
            "info": "Uncheck to disable video controls"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          },
          {
            "type": "checkbox",
            "id": "bg_video",
            "label": "Video In Background",
            "info": "Use video in background with overlay (Overlay Image & Video Controls will be disabled by default on website)"
          },
          {
            "type": "select",
            "id": "size",
            "options": [
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
              },
              {
                "value": "adapt",
                "text": "Adapt"
              },
              {
                "value": "fullscreen",
                "text": "Fullscreen"
              }
            ],
            "label": "Video Height",
            "info": "Height of Video"
          },
          {
            "type": "checkbox",
            "id": "enable_overlay_image",
            "label": "Enable Overlay Image"
          },
          {
            "id": "cover_url",
            "type": "image_picker",
            "label": "Video Overlay Image"
          },
          {
            "type": "checkbox",
            "id": "enable_overlay_color",
            "label": "Enable Overlay Colour"
          },
          {
            "type": "color",
            "id": "overlay_color",
            "label": "Overlay Color"
          },
          {
            "type": "range",
            "id": "overlay_opacity",
            "min": 0,
            "max": 1,
            "step": 0.1,
            "unit": "",
            "label": "Overlay Opacity"
          },
          {
            "type": "select",
            "id": "overlay_size",
            "options": [
              {
                "value": "container",
                "text": "Container (Default)"
              },
              {
                "value": "content",
                "text": "Content"
              }
            ],
            "label": "Overlay Size"
          },
          {
            "id": "overlay_position",
            "type": "select",
            "options": [
              {
                "value": "top-left",
                "text": "Top Left"
              },
              {
                "value": "top-center",
                "text": "Top Center"
              },
              {
                "value": "top-right",
                "text": "Top Right"
              },
              {
                "value": "center-left",
                "text": "Center Left"
              },
              {
                "value": "center-center",
                "text": "Center (Default)"
              },
              {
                "value": "center-right",
                "text": "Center Right"
              },
              {
                "value": "bottom-left",
                "text": "Bottom Left"
              },
              {
                "value": "bottom-center",
                "text": "Bottom Center"
              },
              {
                "value": "bottom-right",
                "text": "Bottom right"
              }
            ],
            "label": "Overlay position",
            "info": "Alignment of Overlay content(heading, sub-heading, button)"
          },
          {
            "type": "text",
            "id": "heading",
            "label": "Heading"
          },
          {
            "type": "color",
            "id": "heading_color",
            "label": "Heading Text Color"
          },
          {
            "type": "text",
            "id": "sub_heading",
            "label": "Sub-heading"
          },
          {
            "type": "color",
            "id": "sub_heading_color",
            "label": "Sub-heading Text Color"
          },
          {
            "type": "url",
            "id": "button_link",
            "label": "Redirect Link"
          },
          {
            "type": "text",
            "id": "button_text",
            "label": "Button Text"
          }
        ],
        "blocks": [],
        "name": "hero_video",
        "label": "Hero Video"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "title",
            "label": "Title"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
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
            "label": "Layout",
            "info": "Alignment of content"
          },
          {
            "type": "range",
            "id": "item_count",
            "min": 3,
            "max": 4,
            "step": 1,
            "unit": "",
            "label": "No of items",
            "info": "Maximum items allowed per row for Horizontal view, for gallery max 5 are viewable and only 5 blocks are required"
          },
          {
            "type": "text",
            "id": "cta_text",
            "label": "CTA Text"
          },
          {
            "type": "url",
            "id": "cta_link",
            "label": "CTA Link",
            "info": "Link to redirect"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
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
                "type": "text",
                "id": "caption",
                "label": "Image Caption"
              },
              {
                "type": "url",
                "id": "link",
                "label": "Link",
                "info": "Link to redirect"
              }
            ]
          }
        ],
        "name": "image_gallery",
        "label": "Image Gallery",
        "preset": {
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
            "type": "text",
            "id": "title",
            "label": "Title"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          },
          {
            "type": "checkbox",
            "id": "autoplay",
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
            "info": "Autoplay slide duration"
          },
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
            "label": "Slide height",
            "info": "Size of the slide"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          }
        ],
        "blocks": [
          {
            "type": "image_slide",
            "name": "Slide",
            "props": [
              {
                "type": "image_picker",
                "id": "image",
                "label": "Image"
              },
              {
                "type": "url",
                "id": "slide_link",
                "label": "Slide Link"
              }
            ]
          }
        ],
        "name": "image_slideshow",
        "label": "Image Slideshow",
        "preset": {
          "blocks": [
            {
              "name": "Slide"
            },
            {
              "name": "Slide"
            },
            {
              "name": "Slide"
            }
          ]
        }
      },
      {
        "props": [
          {
            "type": "image_picker",
            "id": "image",
            "label": "Image"
          },
          {
            "id": "video",
            "type": "url",
            "label": "Video"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          },
          {
            "id": "cover",
            "type": "url",
            "label": "Video Cover Image"
          },
          {
            "type": "select",
            "id": "media_alignment",
            "options": [
              {
                "value": "left",
                "text": "Left"
              },
              {
                "value": "center",
                "text": "Center"
              },
              {
                "value": "right",
                "text": "Right"
              }
            ],
            "label": "Media Alignment"
          },
          {
            "type": "text",
            "id": "heading",
            "label": "Heading"
          },
          {
            "type": "text",
            "id": "text Pair large text with an image to give focus to your chosen product, collection, or blog post. Add details on availability, style, or even provide a review.",
            "label": "Text"
          },
          {
            "type": "select",
            "id": "text_alignment",
            "options": [
              {
                "value": "left",
                "text": "Left"
              },
              {
                "value": "center",
                "text": "Center"
              },
              {
                "value": "right",
                "text": "Right"
              }
            ],
            "label": "Text Alignment"
          }
        ],
        "blocks": [],
        "name": "media_with_text",
        "label": "Media with text"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "title",
            "label": "Title"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          },
          {
            "type": "checkbox",
            "id": "autoplay",
            "label": "AutoPlay Slides"
          },
          {
            "type": "range",
            "id": "slide_interval",
            "min": 1,
            "max": 10,
            "step": 1,
            "unit": "sec",
            "label": "Change slides every"
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
                "info": "Text for testimonial",
                "placeholder": "Text"
              },
              {
                "type": "text",
                "id": "author_name",
                "label": "Author name"
              },
              {
                "type": "text",
                "id": "author_description",
                "label": "Author Description"
              },
              {
                "type": "image_picker",
                "id": "author_image",
                "label": "Author Image"
              }
            ]
          }
        ],
        "name": "testimonials",
        "label": "Testimonial",
        "preset": {
          "blocks": [
            {
              "name": "Testimonial"
            },
            {
              "name": "Testimonial"
            },
            {
              "name": "Testimonial"
            }
          ]
        }
      }
    ],
    "src": "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/7yuL57qP2-archive.zip"
  }
}
```
</details>

<details>
<summary><i>&nbsp; example2</i></summary>

```json
{
  "value": {
    "_id": "64b91fe317422a1e1392f85b",
    "applied": true,
    "is_private": true,
    "tags": [],
    "name": "Astra",
    "version": "1.0.11",
    "application_id": "7487ea376e1442284917c44e",
    "styles": {},
    "template_theme_id": "64be264c0347c5002279b75f",
    "created_at": "2023-07-24T07:20:44.629Z",
    "updated_at": "2023-08-01T11:09:25.857Z",
    "theme_type": "vue2",
    "assets": {
      "umd_js": {
        "links": [
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_themeBundle.umd.min.9.js",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_themeBundle.umd.min.cart.js",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_themeBundle.umd.min.extras.js",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_themeBundle.umd.min.products-listing_profile.js",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_themeBundle.umd.min.products-listing.js",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_themeBundle.umd.min.products.js",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_themeBundle.umd.min.profile.js",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_themeBundle.umd.min.vendors_products-listing.js",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_themeBundle.umd.min.vendors_products.js",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_themeBundle.umd.min.js"
        ],
        "link": ""
      },
      "common_js": {
        "link": "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_themeBundle.common.js"
      },
      "css": {
        "links": [
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_extras.8604b743eb82cd74e4bb.css",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_products-listing_profile.944723408675f52ed297.css",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_products-listing.ca493ea7d081b4b575f7.css",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_products.2c64f7731dab64227f0b.css",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_profile.1b1467735927e188d272.css",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_themeBundle.css",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_vendors_products-listing.c8fe85761d60286348e3.css"
        ],
        "link": ""
      }
    },
    "font": {
      "variants": {
        "light": {
          "name": "300",
          "file": "https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLDz8V1tvFP-KUEg.ttf"
        },
        "regular": {
          "name": "regular",
          "file": "https://fonts.gstatic.com/s/poppins/v20/pxiEyp8kv8JHgFVrFJDUc1NECPY.ttf"
        },
        "medium": {
          "name": "500",
          "file": "https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLGT9V1tvFP-KUEg.ttf"
        },
        "semi_bold": {
          "name": "600",
          "file": "https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLEj6V1tvFP-KUEg.ttf"
        },
        "bold": {
          "name": "700",
          "file": "https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLCz7V1tvFP-KUEg.ttf"
        }
      },
      "family": "Poppins"
    },
    "config": {
      "current": "Default",
      "list": [
        {
          "name": "Default",
          "global_config": {
            "static": {
              "props": {
                "colors": {
                  "primary_color": "#000000",
                  "secondary_color": "#000000",
                  "accent_color": "#000000",
                  "link_color": "#4499FF",
                  "button_secondary_color": "#000000",
                  "bg_color": "#F8F8F8"
                },
                "auth": {
                  "show_header_auth": false,
                  "show_footer_auth": false
                },
                "palette": {
                  "general_setting": {
                    "theme": {
                      "page_background": "#F3F3ED",
                      "theme_accent": "#E1D0C8"
                    },
                    "text": {
                      "text_heading": "#26201A",
                      "text_body": "#3C3131",
                      "text_label": "#7D7676",
                      "text_secondary": "#9C9C9C"
                    },
                    "button": {
                      "button_primary": "#4E3F09",
                      "button_secondary": "#FFFFFF",
                      "button_link": "#B1655B"
                    },
                    "sale_discount": {
                      "sale_badge_background": "#FFFFFF",
                      "sale_badge_text": "#1C958F",
                      "sale_discount_text": "#1C958F",
                      "sale_timer": "#994449"
                    },
                    "header": {
                      "header_background": "#F3F3ED",
                      "header_nav": "#261A1A",
                      "header_icon": "#261A1A"
                    },
                    "footer": {
                      "footer_background": "#2C231E",
                      "footer_bottom_background": "#231812",
                      "footer_heading_text": "#FFFFFF",
                      "footer_body_text": "#FFFFFF",
                      "footer_icon": "#FFFFFF"
                    }
                  },
                  "advance_setting": {
                    "overlay_popup": {
                      "dialog_backgroung": "#FFFFFF",
                      "overlay": "#14130E"
                    },
                    "divider_stroke_highlight": {
                      "divider_strokes": "#D4D1D1",
                      "highlight": "#EDECE9"
                    },
                    "user_alerts": {
                      "success_background": "#C2DBC9",
                      "success_text": "#1C958F",
                      "error_background": "#E6D5D5",
                      "error_text": "#B24141",
                      "info_background": "#EBD3BC",
                      "info_text": "#D28F51"
                    }
                  }
                },
                "extension": {
                  "header_top": [],
                  "header_bottom": [],
                  "footer_top": [],
                  "footer_bottom": []
                }
              }
            },
            "custom": {
              "props": {
                "header_bg_color": "#ffffff",
                "header_text_color": "#000000",
                "header_border_color": "#e1e1e1",
                "header_icon_color": "#000000",
                "header_cart_notification_bg_color": "#e8a76c",
                "header_cart_notification_text_color": "#ffffff",
                "header_nav_hover_color": "#999999",
                "button_primary_color": "#ffffff",
                "button_primary_label_color": "#000000",
                "button_add_to_cart_color": "#000000",
                "button_add_to_cart_label_color": "#ffffff",
                "button_secondary_color": "#000000",
                "button_secondary_label_color": "#ffffff",
                "button_tertiary_color": "#000000",
                "button_tertiary_label_color": "#000000",
                "button_tertiary_hover_color": "#000000",
                "button_tertiary_hover_text_color": "#ffffff",
                "text_heading_link_color": "#000000",
                "text_body_color": "#000000",
                "text_price_color": "#000000",
                "text_sale_price_color": "#fb406b",
                "text_strikethrough_price_color": "#9b9b9b",
                "text_discount_color": "#ee478d",
                "footer_bg_color": "#ffffff",
                "footer_text_color": "#999999",
                "footer_border_color": "#e1e1e1",
                "footer_nav_hover_color": "#000000",
                "disable_cart": false,
                "is_menu_below_logo": false,
                "menu_position": "left"
              }
            }
          },
          "page": []
        },
        {
          "name": "Dark",
          "global_config": {
            "static": {
              "props": {
                "colors": {
                  "primary_color": "#000000",
                  "secondary_color": "#000000",
                  "accent_color": "#000000",
                  "link_color": "#4499FF",
                  "button_secondary_color": "#000000",
                  "bg_color": "#F8F8F8"
                },
                "auth": {
                  "show_header_auth": false,
                  "show_footer_auth": false
                },
                "palette": {
                  "general_setting": {
                    "theme": {
                      "page_background": "#F3F3ED",
                      "theme_accent": "#E1D0C8"
                    },
                    "text": {
                      "text_heading": "#26201A",
                      "text_body": "#3C3131",
                      "text_label": "#7D7676",
                      "text_secondary": "#9C9C9C"
                    },
                    "button": {
                      "button_primary": "#4E3F09",
                      "button_secondary": "#FFFFFF",
                      "button_link": "#B1655B"
                    },
                    "sale_discount": {
                      "sale_badge_background": "#FFFFFF",
                      "sale_badge_text": "#1C958F",
                      "sale_discount_text": "#1C958F",
                      "sale_timer": "#994449"
                    },
                    "header": {
                      "header_background": "#F3F3ED",
                      "header_nav": "#261A1A",
                      "header_icon": "#261A1A"
                    },
                    "footer": {
                      "footer_background": "#2C231E",
                      "footer_bottom_background": "#231812",
                      "footer_heading_text": "#FFFFFF",
                      "footer_body_text": "#FFFFFF",
                      "footer_icon": "#FFFFFF"
                    }
                  },
                  "advance_setting": {
                    "overlay_popup": {
                      "dialog_backgroung": "#FFFFFF",
                      "overlay": "#14130E"
                    },
                    "divider_stroke_highlight": {
                      "divider_strokes": "#D4D1D1",
                      "highlight": "#EDECE9"
                    },
                    "user_alerts": {
                      "success_background": "#C2DBC9",
                      "success_text": "#1C958F",
                      "error_background": "#E6D5D5",
                      "error_text": "#B24141",
                      "info_background": "#EBD3BC",
                      "info_text": "#D28F51"
                    }
                  }
                },
                "extension": {
                  "header_top": [],
                  "header_bottom": [],
                  "footer_top": [],
                  "footer_bottom": []
                }
              }
            },
            "custom": {
              "props": {
                "header_bg_color": "#2e3032",
                "header_text_color": "#ffffff",
                "header_border_color": "#FFFFFF",
                "header_icon_color": "#ffffff",
                "header_cart_notification_bg_color": "#FFFFFF",
                "header_cart_notification_text_color": "#2e3032",
                "header_nav_hover_color": "#000000",
                "button_primary_color": "#000000",
                "button_primary_label_color": "#ffffff",
                "button_add_to_cart_color": "#000000",
                "button_add_to_cart_label_color": "#ffffff",
                "button_secondary_color": "#000000",
                "button_secondary_label_color": "#ffffff",
                "button_tertiary_color": "#000000",
                "button_tertiary_label_color": "#000000",
                "button_tertiary_hover_color": "#000000",
                "button_tertiary_hover_text_color": "#ffffff",
                "text_heading_link_color": "#000000",
                "text_body_color": "#000000",
                "text_price_color": "#000000",
                "text_sale_price_color": "#fb406b",
                "text_strikethrough_price_color": "#9b9b9b",
                "text_discount_color": "#ee478d",
                "footer_bg_color": "#2e3032",
                "footer_text_color": "#ffffff",
                "footer_border_color": "#FFFFFF",
                "footer_nav_hover_color": "#ffffff"
              }
            }
          },
          "page": []
        },
        {
          "name": "Blue",
          "global_config": {
            "static": {
              "props": {
                "colors": {
                  "primary_color": "#000000",
                  "secondary_color": "#000000",
                  "accent_color": "#000000",
                  "link_color": "#4499FF",
                  "button_secondary_color": "#000000",
                  "bg_color": "#F8F8F8"
                },
                "auth": {
                  "show_header_auth": false,
                  "show_footer_auth": false
                },
                "palette": {
                  "general_setting": {
                    "theme": {
                      "page_background": "#F3F3ED",
                      "theme_accent": "#E1D0C8"
                    },
                    "text": {
                      "text_heading": "#26201A",
                      "text_body": "#3C3131",
                      "text_label": "#7D7676",
                      "text_secondary": "#9C9C9C"
                    },
                    "button": {
                      "button_primary": "#4E3F09",
                      "button_secondary": "#FFFFFF",
                      "button_link": "#B1655B"
                    },
                    "sale_discount": {
                      "sale_badge_background": "#FFFFFF",
                      "sale_badge_text": "#1C958F",
                      "sale_discount_text": "#1C958F",
                      "sale_timer": "#994449"
                    },
                    "header": {
                      "header_background": "#F3F3ED",
                      "header_nav": "#261A1A",
                      "header_icon": "#261A1A"
                    },
                    "footer": {
                      "footer_background": "#2C231E",
                      "footer_bottom_background": "#231812",
                      "footer_heading_text": "#FFFFFF",
                      "footer_body_text": "#FFFFFF",
                      "footer_icon": "#FFFFFF"
                    }
                  },
                  "advance_setting": {
                    "overlay_popup": {
                      "dialog_backgroung": "#FFFFFF",
                      "overlay": "#14130E"
                    },
                    "divider_stroke_highlight": {
                      "divider_strokes": "#D4D1D1",
                      "highlight": "#EDECE9"
                    },
                    "user_alerts": {
                      "success_background": "#C2DBC9",
                      "success_text": "#1C958F",
                      "error_background": "#E6D5D5",
                      "error_text": "#B24141",
                      "info_background": "#EBD3BC",
                      "info_text": "#D28F51"
                    }
                  }
                },
                "extension": {
                  "header_top": [],
                  "header_bottom": [],
                  "footer_top": [],
                  "footer_bottom": []
                }
              }
            },
            "custom": {
              "props": {
                "header_bg_color": "#7f9ed0",
                "header_text_color": "#FFFFFF",
                "header_border_color": "#FFFFFF",
                "header_icon_color": "#FFFFFF",
                "header_cart_notification_bg_color": "#2e3032",
                "header_cart_notification_text_color": "#FFFFFF",
                "header_nav_hover_color": "#2e3032",
                "button_primary_color": "#ffffff",
                "button_primary_label_color": "#000000",
                "button_add_to_cart_color": "#000000",
                "button_add_to_cart_label_color": "#ffffff",
                "button_secondary_color": "#000000",
                "button_secondary_label_color": "#ffffff",
                "button_tertiary_color": "#000000",
                "button_tertiary_label_color": "#000000",
                "button_tertiary_hover_color": "#000000",
                "button_tertiary_hover_text_color": "#ffffff",
                "text_heading_link_color": "#000000",
                "text_body_color": "#000000",
                "text_price_color": "#000000",
                "text_sale_price_color": "#fb406b",
                "text_strikethrough_price_color": "#9b9b9b",
                "text_discount_color": "#ee478d",
                "footer_bg_color": "#7f9ed0",
                "footer_text_color": "#FFFFFF",
                "footer_border_color": "#FFFFFF",
                "footer_nav_hover_color": "#2e3032"
              }
            }
          },
          "page": []
        }
      ],
      "preset": {
        "pages": [
          {
            "sections": [
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
                    "exact_url": ""
                  }
                },
                "name": "hero_image",
                "props": {
                  "image": {
                    "value": "",
                    "type": "image_picker"
                  },
                  "overlay_layout": {
                    "type": "select",
                    "value": "center"
                  },
                  "overlay_image": {
                    "value": "",
                    "type": "image_picker"
                  },
                  "overlay_text": {
                    "value": "",
                    "type": "text"
                  },
                  "text_color": {
                    "value": "#000",
                    "type": "color"
                  },
                  "button_link": {
                    "type": "url",
                    "value": ""
                  },
                  "button_text": {
                    "value": "Shop Now",
                    "type": "text"
                  },
                  "full_width": {
                    "value": true,
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
                    "exact_url": ""
                  }
                },
                "name": "image_slideshow",
                "props": {
                  "autoplay": {
                    "value": false,
                    "type": "checkbox"
                  },
                  "full_width": {
                    "value": false,
                    "type": "checkbox"
                  },
                  "slide_height": {
                    "value": "adapt",
                    "type": "select"
                  },
                  "slide_interval": {
                    "value": 2,
                    "type": "range"
                  },
                  "title": {
                    "value": "Trending",
                    "type": "text"
                  }
                },
                "preset": {
                  "blocks": [
                    {
                      "name": "Slide"
                    },
                    {
                      "name": "Slide"
                    },
                    {
                      "name": "Slide"
                    }
                  ]
                }
              },
              {
                "blocks": [
                  {
                    "type": "gallery_image",
                    "name": "Image",
                    "props": {
                      "image": {
                        "type": "image_picker",
                        "value": ""
                      },
                      "caption": {
                        "type": "text",
                        "value": ""
                      },
                      "link": {
                        "type": "url",
                        "value": ""
                      }
                    }
                  },
                  {
                    "type": "gallery_image",
                    "name": "Image",
                    "props": {
                      "image": {
                        "type": "image_picker",
                        "value": ""
                      },
                      "caption": {
                        "type": "text",
                        "value": ""
                      },
                      "link": {
                        "type": "url",
                        "value": ""
                      }
                    }
                  },
                  {
                    "type": "gallery_image",
                    "name": "Image",
                    "props": {
                      "image": {
                        "type": "image_picker",
                        "value": ""
                      },
                      "caption": {
                        "type": "text",
                        "value": ""
                      },
                      "link": {
                        "type": "url",
                        "value": ""
                      }
                    }
                  },
                  {
                    "type": "gallery_image",
                    "name": "Image",
                    "props": {
                      "image": {
                        "type": "image_picker",
                        "value": ""
                      },
                      "caption": {
                        "type": "text",
                        "value": ""
                      },
                      "link": {
                        "type": "url",
                        "value": ""
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
                    "exact_url": ""
                  }
                },
                "name": "image_gallery",
                "props": {
                  "title": {
                    "type": "text",
                    "value": "Popular Brands"
                  },
                  "layout": {
                    "value": "grid",
                    "type": "select"
                  },
                  "item_count": {
                    "value": 4,
                    "type": "range"
                  },
                  "cta_text": {
                    "value": "",
                    "type": "text"
                  },
                  "cta_link": {
                    "type": "url",
                    "value": ""
                  },
                  "full_width": {
                    "value": false,
                    "type": "checkbox"
                  }
                },
                "preset": {
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
                    "exact_url": ""
                  }
                },
                "name": "brands_listing",
                "props": {
                  "brand_type": {
                    "value": "all",
                    "type": "radio"
                  },
                  "cta_text": {
                    "value": "View all",
                    "type": "text"
                  },
                  "department": {
                    "type": "department"
                  },
                  "header": {
                    "type": "header"
                  },
                  "items_per_row": {
                    "value": 5,
                    "type": "range"
                  },
                  "layout": {
                    "value": "horizontal",
                    "type": "select"
                  },
                  "title": {
                    "type": "text",
                    "value": "Brands"
                  },
                  "view_options": {
                    "value": "fullview",
                    "type": "select"
                  }
                }
              },
              {
                "blocks": [
                  {
                    "type": "testimonial",
                    "name": "Testimonial",
                    "props": {
                      "testimonialText": {
                        "type": "textarea",
                        "value": ""
                      },
                      "author_name": {
                        "type": "text"
                      },
                      "author_description": {
                        "type": "text",
                        "value": ""
                      },
                      "author_image": {
                        "type": "image_picker",
                        "value": ""
                      }
                    }
                  },
                  {
                    "type": "testimonial",
                    "name": "Testimonial",
                    "props": {
                      "testimonialText": {
                        "type": "textarea",
                        "value": ""
                      },
                      "author_name": {
                        "type": "text"
                      },
                      "author_description": {
                        "type": "text",
                        "value": ""
                      },
                      "author_image": {
                        "type": "image_picker",
                        "value": ""
                      }
                    }
                  },
                  {
                    "type": "testimonial",
                    "name": "Testimonial",
                    "props": {
                      "testimonialText": {
                        "type": "textarea",
                        "value": ""
                      },
                      "author_name": {
                        "type": "text"
                      },
                      "author_description": {
                        "type": "text",
                        "value": ""
                      },
                      "author_image": {
                        "type": "image_picker",
                        "value": ""
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
                    "exact_url": ""
                  }
                },
                "name": "testimonials",
                "props": {
                  "autoplay": {
                    "value": false,
                    "type": "checkbox"
                  },
                  "slide_interval": {
                    "value": 2,
                    "type": "range"
                  }
                },
                "preset": {
                  "blocks": [
                    {
                      "name": "Testimonial"
                    },
                    {
                      "name": "Testimonial"
                    },
                    {
                      "name": "Testimonial"
                    }
                  ]
                }
              }
            ],
            "value": "home"
          }
        ]
      },
      "global_schema": {
        "props": [
          {
            "type": "checkbox",
            "id": "disable_cart",
            "category": "Colors",
            "label": "header"
          }
        ]
      }
    },
    "available_sections": [
      {
        "props": [
          {
            "type": "url",
            "id": "banner_link",
            "label": "Redirect Link"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          }
        ],
        "blocks": [],
        "name": "application_banner",
        "label": "Application Banner"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "title",
            "label": "Title"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          },
          {
            "type": "header",
            "id": "header",
            "value": "Choose Brands to Show"
          },
          {
            "id": "view_options",
            "type": "select",
            "options": [
              {
                "value": "logo",
                "text": "Logo View"
              },
              {
                "value": "fullview",
                "text": "Logo and Banner View"
              }
            ],
            "label": "View Options",
            "info": "Brand card view options"
          },
          {
            "type": "radio",
            "id": "brand_type",
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
            "id": "items_per_row",
            "min": 3,
            "max": 5,
            "step": 1,
            "unit": "",
            "label": "Items per row",
            "info": "Maximum items allowed per row"
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
            "label": "Layout",
            "info": "Alignment of content"
          },
          {
            "type": "text",
            "id": "cta_text",
            "label": "CTA Text"
          }
        ],
        "blocks": [
          {
            "type": "brand_item",
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
        "name": "brands_listing",
        "label": "Brands Listing"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "title",
            "label": "Title"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          },
          {
            "type": "radio",
            "id": "collection_type",
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
            "type": "text",
            "id": "tags_filter",
            "label": "Filter by tags",
            "info": "Filter by Tags "
          },
          {
            "type": "range",
            "id": "items_per_row",
            "min": 3,
            "max": 5,
            "step": 1,
            "unit": "",
            "label": "Max items per row",
            "info": "Maximum items allowed per row"
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
            "label": "Layout",
            "info": "Alignment of content"
          },
          {
            "type": "text",
            "id": "cta_text",
            "label": "CTA Text"
          }
        ],
        "blocks": [
          {
            "type": "collection-item",
            "name": "collection Item",
            "props": [
              {
                "type": "collection",
                "id": "collection",
                "label": "Select Collection"
              }
            ]
          }
        ],
        "name": "collections_listing",
        "label": "Collections Listing"
      },
      {
        "props": [
          {
            "type": "code",
            "id": "code",
            "label": "Custom HTML",
            "info": "Add Your custom HTML Code below. You can also use the full screen icon to open a code editor and add your code"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          }
        ],
        "blocks": [],
        "name": "custom_html",
        "label": "Custom HTML"
      },
      {
        "props": [
          {
            "type": "extension",
            "id": "extension",
            "label": "Extension Positions",
            "info": "Handle extension in these positions",
            "positions": [
              {
                "value": "section_extension",
                "text": ""
              }
            ]
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          }
        ],
        "blocks": [],
        "name": "section_extension",
        "label": "Extensions"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "title",
            "label": "Title"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          },
          {
            "type": "collection",
            "id": "collection",
            "label": "Collection",
            "info": "Select a collection to display its products"
          },
          {
            "type": "range",
            "id": "items_per_row",
            "min": 2,
            "max": 5,
            "step": 1,
            "unit": "",
            "label": "Products per row",
            "info": "Maximum items allowed per row"
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
            "label": "Layout",
            "info": "Alignment of content"
          },
          {
            "type": "checkbox",
            "id": "autoplay",
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
            "info": "Autoplay slide duration"
          }
        ],
        "blocks": [],
        "name": "featured_collection",
        "label": "Featured Collection"
      },
      {
        "props": [
          {
            "id": "image",
            "type": "image_picker",
            "label": "Hero Image"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          },
          {
            "id": "overlay_layout",
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
            "label": "Overlay Layout",
            "info": "Alignment of overlay content"
          },
          {
            "type": "image_picker",
            "id": "overlay_image",
            "label": "Overlay image",
            "info": "Overlay Image"
          },
          {
            "type": "text",
            "id": "overlay_text",
            "label": "Overlay Text"
          },
          {
            "type": "color",
            "id": "text_color",
            "label": "Text Color"
          },
          {
            "type": "url",
            "id": "button_link",
            "label": "Redirect Link"
          },
          {
            "type": "text",
            "id": "button_text",
            "label": "Button Text"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          },
          {
            "type": "checkbox",
            "id": "fullscreen_image",
            "label": "Fullscreen Banner ",
            "info": "Check to allow items to take entire viewport"
          }
        ],
        "blocks": [],
        "name": "hero_image",
        "label": "Hero Image"
      },
      {
        "props": [
          {
            "type": "video",
            "id": "videoFile",
            "label": "Primary Video"
          },
          {
            "id": "videoUrl",
            "type": "text",
            "label": "Video URL",
            "info": "Supports MP4 Video & Youtube Video URL"
          },
          {
            "type": "checkbox",
            "id": "autoplay",
            "label": "Autoplay",
            "info": "Check to enable autoplay (Video will be muted if autoplay is active)"
          },
          {
            "type": "checkbox",
            "id": "hidecontrols",
            "label": "Hide Video Controls",
            "info": "check to disable video controls"
          },
          {
            "type": "checkbox",
            "id": "showloop",
            "label": "Play Video in Loop",
            "info": "check to disable Loop"
          },
          {
            "type": "text",
            "id": "title",
            "label": "Heading"
          },
          {
            "id": "coverUrl",
            "type": "image_picker",
            "label": "Thumbnail Image"
          }
        ],
        "blocks": [],
        "name": "hero_video-v2",
        "label": "Hero Video V2"
      },
      {
        "props": [
          {
            "id": "video_url",
            "type": "text",
            "label": "Video URL",
            "info": "Supports MP4 Video & Youtube Video URL"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          },
          {
            "type": "checkbox",
            "id": "autoplay",
            "label": "Autoplay",
            "info": "Check to enable autoplay (Video will be muted if autoplay is active)"
          },
          {
            "type": "checkbox",
            "id": "controls",
            "label": "Video Controls",
            "info": "Uncheck to disable video controls"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          },
          {
            "type": "checkbox",
            "id": "bg_video",
            "label": "Video In Background",
            "info": "Use video in background with overlay (Overlay Image & Video Controls will be disabled by default on website)"
          },
          {
            "type": "select",
            "id": "size",
            "options": [
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
              },
              {
                "value": "adapt",
                "text": "Adapt"
              },
              {
                "value": "fullscreen",
                "text": "Fullscreen"
              }
            ],
            "label": "Video Height",
            "info": "Height of Video"
          },
          {
            "type": "checkbox",
            "id": "enable_overlay_image",
            "label": "Enable Overlay Image"
          },
          {
            "id": "cover_url",
            "type": "image_picker",
            "label": "Video Overlay Image"
          },
          {
            "type": "checkbox",
            "id": "enable_overlay_color",
            "label": "Enable Overlay Colour"
          },
          {
            "type": "color",
            "id": "overlay_color",
            "label": "Overlay Color"
          },
          {
            "type": "range",
            "id": "overlay_opacity",
            "min": 0,
            "max": 1,
            "step": 0.1,
            "unit": "",
            "label": "Overlay Opacity"
          },
          {
            "type": "select",
            "id": "overlay_size",
            "options": [
              {
                "value": "container",
                "text": "Container (Default)"
              },
              {
                "value": "content",
                "text": "Content"
              }
            ],
            "label": "Overlay Size"
          },
          {
            "id": "overlay_position",
            "type": "select",
            "options": [
              {
                "value": "top-left",
                "text": "Top Left"
              },
              {
                "value": "top-center",
                "text": "Top Center"
              },
              {
                "value": "top-right",
                "text": "Top Right"
              },
              {
                "value": "center-left",
                "text": "Center Left"
              },
              {
                "value": "center-center",
                "text": "Center (Default)"
              },
              {
                "value": "center-right",
                "text": "Center Right"
              },
              {
                "value": "bottom-left",
                "text": "Bottom Left"
              },
              {
                "value": "bottom-center",
                "text": "Bottom Center"
              },
              {
                "value": "bottom-right",
                "text": "Bottom right"
              }
            ],
            "label": "Overlay position",
            "info": "Alignment of Overlay content(heading, sub-heading, button)"
          },
          {
            "type": "text",
            "id": "heading",
            "label": "Heading"
          },
          {
            "type": "color",
            "id": "heading_color",
            "label": "Heading Text Color"
          },
          {
            "type": "text",
            "id": "sub_heading",
            "label": "Sub-heading"
          },
          {
            "type": "color",
            "id": "sub_heading_color",
            "label": "Sub-heading Text Color"
          },
          {
            "type": "url",
            "id": "button_link",
            "label": "Redirect Link"
          },
          {
            "type": "text",
            "id": "button_text",
            "label": "Button Text"
          }
        ],
        "blocks": [],
        "name": "hero_video",
        "label": "Hero Video"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "title",
            "label": "Title"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
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
            "label": "Layout",
            "info": "Alignment of content"
          },
          {
            "type": "range",
            "id": "item_count",
            "min": 3,
            "max": 4,
            "step": 1,
            "unit": "",
            "label": "No of items",
            "info": "Maximum items allowed per row for Horizontal view, for gallery max 5 are viewable and only 5 blocks are required"
          },
          {
            "type": "text",
            "id": "cta_text",
            "label": "CTA Text"
          },
          {
            "type": "url",
            "id": "cta_link",
            "label": "CTA Link",
            "info": "Link to redirect"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
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
                "type": "text",
                "id": "caption",
                "label": "Image Caption"
              },
              {
                "type": "url",
                "id": "link",
                "label": "Link",
                "info": "Link to redirect"
              }
            ]
          }
        ],
        "name": "image_gallery",
        "label": "Image Gallery",
        "preset": {
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
            "type": "text",
            "id": "title",
            "label": "Title"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          },
          {
            "type": "checkbox",
            "id": "autoplay",
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
            "info": "Autoplay slide duration"
          },
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
            "label": "Slide height",
            "info": "Size of the slide"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          }
        ],
        "blocks": [
          {
            "type": "image_slide",
            "name": "Slide",
            "props": [
              {
                "type": "image_picker",
                "id": "image",
                "label": "Image"
              },
              {
                "type": "url",
                "id": "slide_link",
                "label": "Slide Link"
              }
            ]
          }
        ],
        "name": "image_slideshow",
        "label": "Image Slideshow",
        "preset": {
          "blocks": [
            {
              "name": "Slide"
            },
            {
              "name": "Slide"
            },
            {
              "name": "Slide"
            }
          ]
        }
      },
      {
        "props": [
          {
            "type": "image_picker",
            "id": "image",
            "label": "Image"
          },
          {
            "id": "video",
            "type": "url",
            "label": "Video"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          },
          {
            "id": "cover",
            "type": "url",
            "label": "Video Cover Image"
          },
          {
            "type": "select",
            "id": "media_alignment",
            "options": [
              {
                "value": "left",
                "text": "Left"
              },
              {
                "value": "center",
                "text": "Center"
              },
              {
                "value": "right",
                "text": "Right"
              }
            ],
            "label": "Media Alignment"
          },
          {
            "type": "text",
            "id": "heading",
            "label": "Heading"
          },
          {
            "type": "text",
            "id": "text Pair large text with an image to give focus to your chosen product, collection, or blog post. Add details on availability, style, or even provide a review.",
            "label": "Text"
          },
          {
            "type": "select",
            "id": "text_alignment",
            "options": [
              {
                "value": "left",
                "text": "Left"
              },
              {
                "value": "center",
                "text": "Center"
              },
              {
                "value": "right",
                "text": "Right"
              }
            ],
            "label": "Text Alignment"
          }
        ],
        "blocks": [],
        "name": "media_with_text",
        "label": "Media with text"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "title",
            "label": "Title"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          },
          {
            "type": "checkbox",
            "id": "autoplay",
            "label": "AutoPlay Slides"
          },
          {
            "type": "range",
            "id": "slide_interval",
            "min": 1,
            "max": 10,
            "step": 1,
            "unit": "sec",
            "label": "Change slides every"
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
                "info": "Text for testimonial",
                "placeholder": "Text"
              },
              {
                "type": "text",
                "id": "author_name",
                "label": "Author name"
              },
              {
                "type": "text",
                "id": "author_description",
                "label": "Author Description"
              },
              {
                "type": "image_picker",
                "id": "author_image",
                "label": "Author Image"
              }
            ]
          }
        ],
        "name": "testimonials",
        "label": "Testimonial",
        "preset": {
          "blocks": [
            {
              "name": "Testimonial"
            },
            {
              "name": "Testimonial"
            },
            {
              "name": "Testimonial"
            }
          ]
        }
      }
    ],
    "src": "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/Gpbt5naNG-archive.zip"
  }
}
```
</details>

</details>









---


#### deleteTheme
Delete a theme




```swift
partnerClient.theme.deleteTheme(themeId: themeId, organizationId: organizationId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| themeId | String | yes | The ID of the theme to be deleted. |   
| organizationId | String | yes | Organization ID |  



This endpoint is used to delete a theme from the specified company and application.

*Returned Response:*




[ThemesSchema](#ThemesSchema)

Theme successfully deleted.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; example1</i></summary>

```json
{
  "value": {
    "_id": "64be4423bc7b28003211322e",
    "applied": false,
    "is_private": false,
    "tags": [],
    "application_id": "6487ea376e1442284917c44e",
    "marketplace_theme_id": "64be1f4cceb549012e93d5f4",
    "meta": {
      "payment": {
        "is_paid": false,
        "amount": 0
      },
      "description": "Indulge in the epitome of luxury with our expertly crafted theme, showcasing a high-end aesthetic that exudes elegance. Designed with meticulous attention to detail, our features are tailored to elevate your products and amplify your brand identity.",
      "industry": [
        "Arts and crafts",
        "Baby and kids",
        "Books, music, and video"
      ],
      "release": {
        "notes": "<p>Emerge release notes. Fyndx1 theme submission.</p>"
      },
      "images": {
        "desktop": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/McHjwol_h-images_desktop.webp",
        "mobile": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/bq6gXrmVE-images_mobile.webp"
      },
      "slug": "emerge"
    },
    "name": "Emerge",
    "template_theme_id": "64be1fdc2139f66b3ca2e94d",
    "version": "1.0.153",
    "styles": {},
    "created_at": "2023-07-24T09:28:03.845Z",
    "updated_at": "2023-07-31T12:14:13.097Z",
    "theme_type": "vue2",
    "assets": {
      "umd_js": {
        "links": [
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_themeBundle.umd.min.8.js",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_themeBundle.umd.min.cart.js",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_themeBundle.umd.min.extras.js",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_themeBundle.umd.min.products-listing.js",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_themeBundle.umd.min.products.js",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_themeBundle.umd.min.profile.js",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_themeBundle.umd.min.vendors_products-listing.js",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_themeBundle.umd.min.vendors_products.js",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_themeBundle.umd.min.js"
        ],
        "link": ""
      },
      "common_js": {
        "link": "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_themeBundle.common.js"
      },
      "css": {
        "links": [
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_cart.1b038cd83e502f2d58bc.css",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_extras.f8a9789ae6a06b0bd503.css",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_products-listing.1d639747568baee211ba.css",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_products.c1f151d12b3f704fe028.css",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_profile.c9e6a92612e4b423dbd7.css",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_themeBundle.css",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/yf7ijNZKa_vendors_products-listing.c8fe85761d60286348e3.css"
        ],
        "link": ""
      }
    },
    "font": {
      "variants": {
        "light": {
          "name": "300",
          "file": "https://fonts.gstatic.com/s/poppins/v9/pxiByp8kv8JHgFVrLDz8V1tvFP-KUEg.ttf"
        },
        "regular": {
          "name": "regular",
          "file": "https://fonts.gstatic.com/s/poppins/v9/pxiEyp8kv8JHgFVrFJDUc1NECPY.ttf"
        },
        "medium": {
          "name": "500",
          "file": "https://fonts.gstatic.com/s/poppins/v9/pxiByp8kv8JHgFVrLGT9V1tvFP-KUEg.ttf"
        },
        "semi_bold": {
          "name": "600",
          "file": "https://fonts.gstatic.com/s/poppins/v9/pxiByp8kv8JHgFVrLEj6V1tvFP-KUEg.ttf"
        },
        "bold": {
          "name": "700",
          "file": "https://fonts.gstatic.com/s/poppins/v9/pxiByp8kv8JHgFVrLCz7V1tvFP-KUEg.ttf"
        }
      },
      "family": "Poppins"
    },
    "config": {
      "current": "Default",
      "list": [
        {
          "name": "Default",
          "global_config": {
            "static": {
              "props": {
                "colors": {
                  "primary_color": "#000000",
                  "secondary_color": "#000000",
                  "accent_color": "#000000",
                  "link_color": "#4499FF",
                  "button_secondary_color": "#000000",
                  "bg_color": "#F8F8F8"
                },
                "auth": {
                  "show_header_auth": false,
                  "show_footer_auth": false
                },
                "palette": {
                  "general_setting": {
                    "theme": {
                      "page_background": "#F3F3ED",
                      "theme_accent": "#E1D0C8"
                    },
                    "text": {
                      "text_heading": "#26201A",
                      "text_body": "#3C3131",
                      "text_label": "#7D7676",
                      "text_secondary": "#9C9C9C"
                    },
                    "button": {
                      "button_primary": "#4E3F09",
                      "button_secondary": "#FFFFFF",
                      "button_link": "#B1655B"
                    },
                    "sale_discount": {
                      "sale_badge_background": "#FFFFFF",
                      "sale_badge_text": "#1C958F",
                      "sale_discount_text": "#1C958F",
                      "sale_timer": "#994449"
                    },
                    "header": {
                      "header_background": "#F3F3ED",
                      "header_nav": "#261A1A",
                      "header_icon": "#261A1A"
                    },
                    "footer": {
                      "footer_background": "#2C231E",
                      "footer_bottom_background": "#231812",
                      "footer_heading_text": "#FFFFFF",
                      "footer_body_text": "#FFFFFF",
                      "footer_icon": "#FFFFFF"
                    }
                  },
                  "advance_setting": {
                    "overlay_popup": {
                      "dialog_backgroung": "#FFFFFF",
                      "overlay": "#14130E"
                    },
                    "divider_stroke_highlight": {
                      "divider_strokes": "#D4D1D1",
                      "highlight": "#EDECE9"
                    },
                    "user_alerts": {
                      "success_background": "#C2DBC9",
                      "success_text": "#1C958F",
                      "error_background": "#E6D5D5",
                      "error_text": "#B24141",
                      "info_background": "#EBD3BC",
                      "info_text": "#D28F51"
                    }
                  }
                },
                "extension": {
                  "header_top": [],
                  "header_bottom": [],
                  "footer_top": [],
                  "footer_bottom": []
                }
              }
            },
            "custom": {
              "props": {
                "header_bg_color": "#ffffff",
                "header_text_color": "#000000",
                "header_border_color": "#e1e1e1",
                "header_icon_color": "#000000",
                "header_cart_notification_bg_color": "#e8a76c",
                "header_cart_notification_text_color": "#ffffff",
                "header_nav_hover_color": "#999999",
                "button_primary_color": "#ffffff",
                "button_primary_label_color": "#000000",
                "button_add_to_cart_color": "#000000",
                "button_add_to_cart_label_color": "#ffffff",
                "button_secondary_color": "#000000",
                "button_secondary_label_color": "#ffffff",
                "button_tertiary_color": "#000000",
                "button_tertiary_label_color": "#000000",
                "button_tertiary_hover_color": "#000000",
                "button_tertiary_hover_text_color": "#ffffff",
                "text_heading_link_color": "#000000",
                "text_body_color": "#000000",
                "text_price_color": "#000000",
                "text_sale_price_color": "#fb406b",
                "text_strikethrough_price_color": "#9b9b9b",
                "text_discount_color": "#ee478d",
                "footer_bg_color": "#ffffff",
                "footer_text_color": "#999999",
                "footer_border_color": "#e1e1e1",
                "footer_nav_hover_color": "#000000",
                "disable_cart": false,
                "is_menu_below_logo": false,
                "menu_position": "left"
              }
            }
          },
          "page": []
        },
        {
          "name": "Dark",
          "global_config": {
            "static": {
              "props": {
                "colors": {
                  "primary_color": "#000000",
                  "secondary_color": "#000000",
                  "accent_color": "#000000",
                  "link_color": "#4499FF",
                  "button_secondary_color": "#000000",
                  "bg_color": "#F8F8F8"
                },
                "auth": {
                  "show_header_auth": false,
                  "show_footer_auth": false
                },
                "palette": {
                  "general_setting": {
                    "theme": {
                      "page_background": "#F3F3ED",
                      "theme_accent": "#E1D0C8"
                    },
                    "text": {
                      "text_heading": "#26201A",
                      "text_body": "#3C3131",
                      "text_label": "#7D7676",
                      "text_secondary": "#9C9C9C"
                    },
                    "button": {
                      "button_primary": "#4E3F09",
                      "button_secondary": "#FFFFFF",
                      "button_link": "#B1655B"
                    },
                    "sale_discount": {
                      "sale_badge_background": "#FFFFFF",
                      "sale_badge_text": "#1C958F",
                      "sale_discount_text": "#1C958F",
                      "sale_timer": "#994449"
                    },
                    "header": {
                      "header_background": "#F3F3ED",
                      "header_nav": "#261A1A",
                      "header_icon": "#261A1A"
                    },
                    "footer": {
                      "footer_background": "#2C231E",
                      "footer_bottom_background": "#231812",
                      "footer_heading_text": "#FFFFFF",
                      "footer_body_text": "#FFFFFF",
                      "footer_icon": "#FFFFFF"
                    }
                  },
                  "advance_setting": {
                    "overlay_popup": {
                      "dialog_backgroung": "#FFFFFF",
                      "overlay": "#14130E"
                    },
                    "divider_stroke_highlight": {
                      "divider_strokes": "#D4D1D1",
                      "highlight": "#EDECE9"
                    },
                    "user_alerts": {
                      "success_background": "#C2DBC9",
                      "success_text": "#1C958F",
                      "error_background": "#E6D5D5",
                      "error_text": "#B24141",
                      "info_background": "#EBD3BC",
                      "info_text": "#D28F51"
                    }
                  }
                },
                "extension": {
                  "header_top": [],
                  "header_bottom": [],
                  "footer_top": [],
                  "footer_bottom": []
                }
              }
            },
            "custom": {
              "props": {
                "header_bg_color": "#2e3032",
                "header_text_color": "#ffffff",
                "header_border_color": "#FFFFFF",
                "header_icon_color": "#ffffff",
                "header_cart_notification_bg_color": "#FFFFFF",
                "header_cart_notification_text_color": "#2e3032",
                "header_nav_hover_color": "#000000",
                "button_primary_color": "#000000",
                "button_primary_label_color": "#ffffff",
                "button_add_to_cart_color": "#000000",
                "button_add_to_cart_label_color": "#ffffff",
                "button_secondary_color": "#000000",
                "button_secondary_label_color": "#ffffff",
                "button_tertiary_color": "#000000",
                "button_tertiary_label_color": "#000000",
                "button_tertiary_hover_color": "#000000",
                "button_tertiary_hover_text_color": "#ffffff",
                "text_heading_link_color": "#000000",
                "text_body_color": "#000000",
                "text_price_color": "#000000",
                "text_sale_price_color": "#fb406b",
                "text_strikethrough_price_color": "#9b9b9b",
                "text_discount_color": "#ee478d",
                "footer_bg_color": "#2e3032",
                "footer_text_color": "#ffffff",
                "footer_border_color": "#FFFFFF",
                "footer_nav_hover_color": "#ffffff"
              }
            }
          },
          "page": []
        },
        {
          "name": "Blue",
          "global_config": {
            "static": {
              "props": {
                "colors": {
                  "primary_color": "#000000",
                  "secondary_color": "#000000",
                  "accent_color": "#000000",
                  "link_color": "#4499FF",
                  "button_secondary_color": "#000000",
                  "bg_color": "#F8F8F8"
                },
                "auth": {
                  "show_header_auth": false,
                  "show_footer_auth": false
                },
                "palette": {
                  "general_setting": {
                    "theme": {
                      "page_background": "#F3F3ED",
                      "theme_accent": "#E1D0C8"
                    },
                    "text": {
                      "text_heading": "#26201A",
                      "text_body": "#3C3131",
                      "text_label": "#7D7676",
                      "text_secondary": "#9C9C9C"
                    },
                    "button": {
                      "button_primary": "#4E3F09",
                      "button_secondary": "#FFFFFF",
                      "button_link": "#B1655B"
                    },
                    "sale_discount": {
                      "sale_badge_background": "#FFFFFF",
                      "sale_badge_text": "#1C958F",
                      "sale_discount_text": "#1C958F",
                      "sale_timer": "#994449"
                    },
                    "header": {
                      "header_background": "#F3F3ED",
                      "header_nav": "#261A1A",
                      "header_icon": "#261A1A"
                    },
                    "footer": {
                      "footer_background": "#2C231E",
                      "footer_bottom_background": "#231812",
                      "footer_heading_text": "#FFFFFF",
                      "footer_body_text": "#FFFFFF",
                      "footer_icon": "#FFFFFF"
                    }
                  },
                  "advance_setting": {
                    "overlay_popup": {
                      "dialog_backgroung": "#FFFFFF",
                      "overlay": "#14130E"
                    },
                    "divider_stroke_highlight": {
                      "divider_strokes": "#D4D1D1",
                      "highlight": "#EDECE9"
                    },
                    "user_alerts": {
                      "success_background": "#C2DBC9",
                      "success_text": "#1C958F",
                      "error_background": "#E6D5D5",
                      "error_text": "#B24141",
                      "info_background": "#EBD3BC",
                      "info_text": "#D28F51"
                    }
                  }
                },
                "extension": {
                  "header_top": [],
                  "header_bottom": [],
                  "footer_top": [],
                  "footer_bottom": []
                }
              }
            },
            "custom": {
              "props": {
                "header_bg_color": "#7f9ed0",
                "header_text_color": "#FFFFFF",
                "header_border_color": "#FFFFFF",
                "header_icon_color": "#FFFFFF",
                "header_cart_notification_bg_color": "#2e3032",
                "header_cart_notification_text_color": "#FFFFFF",
                "header_nav_hover_color": "#2e3032",
                "button_primary_color": "#ffffff",
                "button_primary_label_color": "#000000",
                "button_add_to_cart_color": "#000000",
                "button_add_to_cart_label_color": "#ffffff",
                "button_secondary_color": "#000000",
                "button_secondary_label_color": "#ffffff",
                "button_tertiary_color": "#000000",
                "button_tertiary_label_color": "#000000",
                "button_tertiary_hover_color": "#000000",
                "button_tertiary_hover_text_color": "#ffffff",
                "text_heading_link_color": "#000000",
                "text_body_color": "#000000",
                "text_price_color": "#000000",
                "text_sale_price_color": "#fb406b",
                "text_strikethrough_price_color": "#9b9b9b",
                "text_discount_color": "#ee478d",
                "footer_bg_color": "#7f9ed0",
                "footer_text_color": "#FFFFFF",
                "footer_border_color": "#FFFFFF",
                "footer_nav_hover_color": "#2e3032"
              }
            }
          },
          "page": []
        }
      ],
      "preset": {
        "pages": [
          {
            "sections": [
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
                    "exact_url": ""
                  }
                },
                "name": "hero_image",
                "props": {
                  "image": {
                    "value": "",
                    "type": "image_picker"
                  },
                  "overlay_layout": {
                    "type": "select",
                    "value": "center"
                  },
                  "overlay_image": {
                    "value": "",
                    "type": "image_picker"
                  },
                  "overlay_text": {
                    "value": "",
                    "type": "text"
                  },
                  "text_color": {
                    "value": "#000",
                    "type": "color"
                  },
                  "button_link": {
                    "type": "url",
                    "value": ""
                  },
                  "button_text": {
                    "value": "Shop Now",
                    "type": "text"
                  },
                  "full_width": {
                    "value": true,
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
                    "exact_url": ""
                  }
                },
                "name": "image_slideshow",
                "props": {
                  "autoplay": {
                    "value": false,
                    "type": "checkbox"
                  },
                  "full_width": {
                    "value": false,
                    "type": "checkbox"
                  },
                  "slide_height": {
                    "value": "adapt",
                    "type": "select"
                  },
                  "slide_interval": {
                    "value": 2,
                    "type": "range"
                  },
                  "title": {
                    "value": "Trending",
                    "type": "text"
                  }
                },
                "preset": {
                  "blocks": [
                    {
                      "name": "Slide"
                    },
                    {
                      "name": "Slide"
                    },
                    {
                      "name": "Slide"
                    }
                  ]
                }
              },
              {
                "blocks": [
                  {
                    "type": "gallery_image",
                    "name": "Image",
                    "props": {
                      "image": {
                        "type": "image_picker",
                        "value": ""
                      },
                      "caption": {
                        "type": "text",
                        "value": ""
                      },
                      "link": {
                        "type": "url",
                        "value": ""
                      }
                    }
                  },
                  {
                    "type": "gallery_image",
                    "name": "Image",
                    "props": {
                      "image": {
                        "type": "image_picker",
                        "value": ""
                      },
                      "caption": {
                        "type": "text",
                        "value": ""
                      },
                      "link": {
                        "type": "url",
                        "value": ""
                      }
                    }
                  },
                  {
                    "type": "gallery_image",
                    "name": "Image",
                    "props": {
                      "image": {
                        "type": "image_picker",
                        "value": ""
                      },
                      "caption": {
                        "type": "text",
                        "value": ""
                      },
                      "link": {
                        "type": "url",
                        "value": ""
                      }
                    }
                  },
                  {
                    "type": "gallery_image",
                    "name": "Image",
                    "props": {
                      "image": {
                        "type": "image_picker",
                        "value": ""
                      },
                      "caption": {
                        "type": "text",
                        "value": ""
                      },
                      "link": {
                        "type": "url",
                        "value": ""
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
                    "exact_url": ""
                  }
                },
                "name": "image_gallery",
                "props": {
                  "title": {
                    "type": "text",
                    "value": "Popular Brands"
                  },
                  "layout": {
                    "value": "grid",
                    "type": "select"
                  },
                  "item_count": {
                    "value": 4,
                    "type": "range"
                  },
                  "cta_text": {
                    "value": "",
                    "type": "text"
                  },
                  "cta_link": {
                    "type": "url",
                    "value": ""
                  },
                  "full_width": {
                    "value": false,
                    "type": "checkbox"
                  }
                },
                "preset": {
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
                    "exact_url": ""
                  }
                },
                "name": "brands_listing",
                "props": {
                  "brand_type": {
                    "value": "all",
                    "type": "radio"
                  },
                  "cta_text": {
                    "value": "View all",
                    "type": "text"
                  },
                  "department": {
                    "type": "department"
                  },
                  "header": {
                    "type": "header"
                  },
                  "items_per_row": {
                    "value": 5,
                    "type": "range"
                  },
                  "layout": {
                    "value": "horizontal",
                    "type": "select"
                  },
                  "title": {
                    "type": "text",
                    "value": "Brands"
                  },
                  "view_options": {
                    "value": "fullview",
                    "type": "select"
                  }
                }
              },
              {
                "blocks": [
                  {
                    "type": "testimonial",
                    "name": "Testimonial",
                    "props": {
                      "testimonialText": {
                        "type": "textarea",
                        "value": ""
                      },
                      "author_name": {
                        "type": "text"
                      },
                      "author_description": {
                        "type": "text",
                        "value": ""
                      },
                      "author_image": {
                        "type": "image_picker",
                        "value": ""
                      }
                    }
                  },
                  {
                    "type": "testimonial",
                    "name": "Testimonial",
                    "props": {
                      "testimonialText": {
                        "type": "textarea",
                        "value": ""
                      },
                      "author_name": {
                        "type": "text"
                      },
                      "author_description": {
                        "type": "text",
                        "value": ""
                      },
                      "author_image": {
                        "type": "image_picker",
                        "value": ""
                      }
                    }
                  },
                  {
                    "type": "testimonial",
                    "name": "Testimonial",
                    "props": {
                      "testimonialText": {
                        "type": "textarea",
                        "value": ""
                      },
                      "author_name": {
                        "type": "text"
                      },
                      "author_description": {
                        "type": "text",
                        "value": ""
                      },
                      "author_image": {
                        "type": "image_picker",
                        "value": ""
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
                    "exact_url": ""
                  }
                },
                "name": "testimonials",
                "props": {
                  "autoplay": {
                    "value": false,
                    "type": "checkbox"
                  },
                  "slide_interval": {
                    "value": 2,
                    "type": "range"
                  }
                },
                "preset": {
                  "blocks": [
                    {
                      "name": "Testimonial"
                    },
                    {
                      "name": "Testimonial"
                    },
                    {
                      "name": "Testimonial"
                    }
                  ]
                }
              }
            ],
            "value": "home"
          }
        ]
      },
      "global_schema": {
        "props": [
          {
            "type": "checkbox",
            "id": "disable_cart",
            "category": "Colors",
            "label": "header"
          }
        ]
      }
    },
    "available_sections": [
      {
        "props": [
          {
            "type": "url",
            "id": "banner_link",
            "label": "Redirect Link"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          }
        ],
        "blocks": [],
        "name": "application_banner",
        "label": "Application Banner"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "title",
            "label": "Title"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          },
          {
            "type": "header",
            "id": "header",
            "value": "Choose Brands to Show"
          },
          {
            "id": "view_options",
            "type": "select",
            "options": [
              {
                "value": "logo",
                "text": "Logo View"
              },
              {
                "value": "fullview",
                "text": "Logo and Banner View"
              }
            ],
            "label": "View Options",
            "info": "Brand card view options"
          },
          {
            "type": "radio",
            "id": "brand_type",
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
            "id": "items_per_row",
            "min": 3,
            "max": 5,
            "step": 1,
            "unit": "",
            "label": "Items per row",
            "info": "Maximum items allowed per row"
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
            "label": "Layout",
            "info": "Alignment of content"
          },
          {
            "type": "text",
            "id": "cta_text",
            "label": "CTA Text"
          }
        ],
        "blocks": [
          {
            "type": "brand_item",
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
        "name": "brands_listing",
        "label": "Brands Listing"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "title",
            "label": "Title"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          },
          {
            "type": "radio",
            "id": "collection_type",
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
            "type": "text",
            "id": "tags_filter",
            "label": "Filter by tags",
            "info": "Filter by Tags "
          },
          {
            "type": "range",
            "id": "items_per_row",
            "min": 3,
            "max": 5,
            "step": 1,
            "unit": "",
            "label": "Max items per row",
            "info": "Maximum items allowed per row"
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
            "label": "Layout",
            "info": "Alignment of content"
          },
          {
            "type": "text",
            "id": "cta_text",
            "label": "CTA Text"
          }
        ],
        "blocks": [
          {
            "type": "collection-item",
            "name": "collection Item",
            "props": [
              {
                "type": "collection",
                "id": "collection",
                "label": "Select Collection"
              }
            ]
          }
        ],
        "name": "collections_listing",
        "label": "Collections Listing"
      },
      {
        "props": [
          {
            "type": "code",
            "id": "code",
            "label": "Custom HTML",
            "info": "Add Your custom HTML Code below. You can also use the full screen icon to open a code editor and add your code"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          }
        ],
        "blocks": [],
        "name": "custom_html",
        "label": "Custom HTML"
      },
      {
        "props": [
          {
            "type": "extension",
            "id": "extension",
            "label": "Extension Positions",
            "info": "Handle extension in these positions",
            "positions": [
              {
                "value": "section_extension",
                "text": ""
              }
            ]
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          }
        ],
        "blocks": [],
        "name": "section_extension",
        "label": "Extensions"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "title",
            "label": "Title"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          },
          {
            "type": "collection",
            "id": "collection",
            "label": "Collection",
            "info": "Select a collection to display its products"
          },
          {
            "type": "range",
            "id": "items_per_row",
            "min": 2,
            "max": 5,
            "step": 1,
            "unit": "",
            "label": "Products per row",
            "info": "Maximum items allowed per row"
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
            "label": "Layout",
            "info": "Alignment of content"
          },
          {
            "type": "checkbox",
            "id": "autoplay",
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
            "info": "Autoplay slide duration"
          }
        ],
        "blocks": [],
        "name": "featured_collection",
        "label": "Featured Collection"
      },
      {
        "props": [
          {
            "id": "image",
            "type": "image_picker",
            "label": "Hero Image"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          },
          {
            "id": "overlay_layout",
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
            "label": "Overlay Layout",
            "info": "Alignment of overlay content"
          },
          {
            "type": "image_picker",
            "id": "overlay_image",
            "label": "Overlay image",
            "info": "Overlay Image"
          },
          {
            "type": "text",
            "id": "overlay_text",
            "label": "Overlay Text"
          },
          {
            "type": "color",
            "id": "text_color",
            "label": "Text Color"
          },
          {
            "type": "url",
            "id": "button_link",
            "label": "Redirect Link"
          },
          {
            "type": "text",
            "id": "button_text",
            "label": "Button Text"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          },
          {
            "type": "checkbox",
            "id": "fullscreen_image",
            "label": "Fullscreen Banner ",
            "info": "Check to allow items to take entire viewport"
          }
        ],
        "blocks": [],
        "name": "hero_image",
        "label": "Hero Image"
      },
      {
        "props": [
          {
            "type": "video",
            "id": "videoFile",
            "label": "Primary Video"
          },
          {
            "id": "videoUrl",
            "type": "text",
            "label": "Video URL",
            "info": "Supports MP4 Video & Youtube Video URL"
          },
          {
            "type": "checkbox",
            "id": "autoplay",
            "label": "Autoplay",
            "info": "Check to enable autoplay (Video will be muted if autoplay is active)"
          },
          {
            "type": "checkbox",
            "id": "hidecontrols",
            "label": "Hide Video Controls",
            "info": "check to disable video controls"
          },
          {
            "type": "checkbox",
            "id": "showloop",
            "label": "Play Video in Loop",
            "info": "check to disable Loop"
          },
          {
            "type": "text",
            "id": "title",
            "label": "Heading"
          },
          {
            "id": "coverUrl",
            "type": "image_picker",
            "label": "Thumbnail Image"
          }
        ],
        "blocks": [],
        "name": "hero_video-v2",
        "label": "Hero Video V2"
      },
      {
        "props": [
          {
            "id": "video_url",
            "type": "text",
            "label": "Video URL",
            "info": "Supports MP4 Video & Youtube Video URL"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          },
          {
            "type": "checkbox",
            "id": "autoplay",
            "label": "Autoplay",
            "info": "Check to enable autoplay (Video will be muted if autoplay is active)"
          },
          {
            "type": "checkbox",
            "id": "controls",
            "label": "Video Controls",
            "info": "Uncheck to disable video controls"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          },
          {
            "type": "checkbox",
            "id": "bg_video",
            "label": "Video In Background",
            "info": "Use video in background with overlay (Overlay Image & Video Controls will be disabled by default on website)"
          },
          {
            "type": "select",
            "id": "size",
            "options": [
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
              },
              {
                "value": "adapt",
                "text": "Adapt"
              },
              {
                "value": "fullscreen",
                "text": "Fullscreen"
              }
            ],
            "label": "Video Height",
            "info": "Height of Video"
          },
          {
            "type": "checkbox",
            "id": "enable_overlay_image",
            "label": "Enable Overlay Image"
          },
          {
            "id": "cover_url",
            "type": "image_picker",
            "label": "Video Overlay Image"
          },
          {
            "type": "checkbox",
            "id": "enable_overlay_color",
            "label": "Enable Overlay Colour"
          },
          {
            "type": "color",
            "id": "overlay_color",
            "label": "Overlay Color"
          },
          {
            "type": "range",
            "id": "overlay_opacity",
            "min": 0,
            "max": 1,
            "step": 0.1,
            "unit": "",
            "label": "Overlay Opacity"
          },
          {
            "type": "select",
            "id": "overlay_size",
            "options": [
              {
                "value": "container",
                "text": "Container (Default)"
              },
              {
                "value": "content",
                "text": "Content"
              }
            ],
            "label": "Overlay Size"
          },
          {
            "id": "overlay_position",
            "type": "select",
            "options": [
              {
                "value": "top-left",
                "text": "Top Left"
              },
              {
                "value": "top-center",
                "text": "Top Center"
              },
              {
                "value": "top-right",
                "text": "Top Right"
              },
              {
                "value": "center-left",
                "text": "Center Left"
              },
              {
                "value": "center-center",
                "text": "Center (Default)"
              },
              {
                "value": "center-right",
                "text": "Center Right"
              },
              {
                "value": "bottom-left",
                "text": "Bottom Left"
              },
              {
                "value": "bottom-center",
                "text": "Bottom Center"
              },
              {
                "value": "bottom-right",
                "text": "Bottom right"
              }
            ],
            "label": "Overlay position",
            "info": "Alignment of Overlay content(heading, sub-heading, button)"
          },
          {
            "type": "text",
            "id": "heading",
            "label": "Heading"
          },
          {
            "type": "color",
            "id": "heading_color",
            "label": "Heading Text Color"
          },
          {
            "type": "text",
            "id": "sub_heading",
            "label": "Sub-heading"
          },
          {
            "type": "color",
            "id": "sub_heading_color",
            "label": "Sub-heading Text Color"
          },
          {
            "type": "url",
            "id": "button_link",
            "label": "Redirect Link"
          },
          {
            "type": "text",
            "id": "button_text",
            "label": "Button Text"
          }
        ],
        "blocks": [],
        "name": "hero_video",
        "label": "Hero Video"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "title",
            "label": "Title"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
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
            "label": "Layout",
            "info": "Alignment of content"
          },
          {
            "type": "range",
            "id": "item_count",
            "min": 3,
            "max": 4,
            "step": 1,
            "unit": "",
            "label": "No of items",
            "info": "Maximum items allowed per row for Horizontal view, for gallery max 5 are viewable and only 5 blocks are required"
          },
          {
            "type": "text",
            "id": "cta_text",
            "label": "CTA Text"
          },
          {
            "type": "url",
            "id": "cta_link",
            "label": "CTA Link",
            "info": "Link to redirect"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
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
                "type": "text",
                "id": "caption",
                "label": "Image Caption"
              },
              {
                "type": "url",
                "id": "link",
                "label": "Link",
                "info": "Link to redirect"
              }
            ]
          }
        ],
        "name": "image_gallery",
        "label": "Image Gallery",
        "preset": {
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
            "type": "text",
            "id": "title",
            "label": "Title"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          },
          {
            "type": "checkbox",
            "id": "autoplay",
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
            "info": "Autoplay slide duration"
          },
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
            "label": "Slide height",
            "info": "Size of the slide"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          }
        ],
        "blocks": [
          {
            "type": "image_slide",
            "name": "Slide",
            "props": [
              {
                "type": "image_picker",
                "id": "image",
                "label": "Image"
              },
              {
                "type": "url",
                "id": "slide_link",
                "label": "Slide Link"
              }
            ]
          }
        ],
        "name": "image_slideshow",
        "label": "Image Slideshow",
        "preset": {
          "blocks": [
            {
              "name": "Slide"
            },
            {
              "name": "Slide"
            },
            {
              "name": "Slide"
            }
          ]
        }
      },
      {
        "props": [
          {
            "type": "image_picker",
            "id": "image",
            "label": "Image"
          },
          {
            "id": "video",
            "type": "url",
            "label": "Video"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          },
          {
            "id": "cover",
            "type": "url",
            "label": "Video Cover Image"
          },
          {
            "type": "select",
            "id": "media_alignment",
            "options": [
              {
                "value": "left",
                "text": "Left"
              },
              {
                "value": "center",
                "text": "Center"
              },
              {
                "value": "right",
                "text": "Right"
              }
            ],
            "label": "Media Alignment"
          },
          {
            "type": "text",
            "id": "heading",
            "label": "Heading"
          },
          {
            "type": "text",
            "id": "text Pair large text with an image to give focus to your chosen product, collection, or blog post. Add details on availability, style, or even provide a review.",
            "label": "Text"
          },
          {
            "type": "select",
            "id": "text_alignment",
            "options": [
              {
                "value": "left",
                "text": "Left"
              },
              {
                "value": "center",
                "text": "Center"
              },
              {
                "value": "right",
                "text": "Right"
              }
            ],
            "label": "Text Alignment"
          }
        ],
        "blocks": [],
        "name": "media_with_text",
        "label": "Media with text"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "title",
            "label": "Title"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          },
          {
            "type": "checkbox",
            "id": "autoplay",
            "label": "AutoPlay Slides"
          },
          {
            "type": "range",
            "id": "slide_interval",
            "min": 1,
            "max": 10,
            "step": 1,
            "unit": "sec",
            "label": "Change slides every"
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
                "info": "Text for testimonial",
                "placeholder": "Text"
              },
              {
                "type": "text",
                "id": "author_name",
                "label": "Author name"
              },
              {
                "type": "text",
                "id": "author_description",
                "label": "Author Description"
              },
              {
                "type": "image_picker",
                "id": "author_image",
                "label": "Author Image"
              }
            ]
          }
        ],
        "name": "testimonials",
        "label": "Testimonial",
        "preset": {
          "blocks": [
            {
              "name": "Testimonial"
            },
            {
              "name": "Testimonial"
            },
            {
              "name": "Testimonial"
            }
          ]
        }
      }
    ],
    "src": "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64b0eb01c35f990518880a82/theme/assets/7yuL57qP2-archive.zip"
  }
}
```
</details>

<details>
<summary><i>&nbsp; example2</i></summary>

```json
{
  "value": {
    "_id": "64b91fe317422a1e1392f85b",
    "applied": true,
    "is_private": true,
    "tags": [],
    "name": "Astra",
    "version": "1.0.11",
    "application_id": "7487ea376e1442284917c44e",
    "styles": {},
    "template_theme_id": "64be264c0347c5002279b75f",
    "created_at": "2023-07-24T07:20:44.629Z",
    "updated_at": "2023-08-01T11:09:25.857Z",
    "theme_type": "vue2",
    "assets": {
      "umd_js": {
        "links": [
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_themeBundle.umd.min.9.js",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_themeBundle.umd.min.cart.js",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_themeBundle.umd.min.extras.js",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_themeBundle.umd.min.products-listing_profile.js",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_themeBundle.umd.min.products-listing.js",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_themeBundle.umd.min.products.js",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_themeBundle.umd.min.profile.js",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_themeBundle.umd.min.vendors_products-listing.js",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_themeBundle.umd.min.vendors_products.js",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_themeBundle.umd.min.js"
        ],
        "link": ""
      },
      "common_js": {
        "link": "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_themeBundle.common.js"
      },
      "css": {
        "links": [
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_extras.8604b743eb82cd74e4bb.css",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_products-listing_profile.944723408675f52ed297.css",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_products-listing.ca493ea7d081b4b575f7.css",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_products.2c64f7731dab64227f0b.css",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_profile.1b1467735927e188d272.css",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_themeBundle.css",
          "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/O3s2Kmnsc_vendors_products-listing.c8fe85761d60286348e3.css"
        ],
        "link": ""
      }
    },
    "font": {
      "variants": {
        "light": {
          "name": "300",
          "file": "https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLDz8V1tvFP-KUEg.ttf"
        },
        "regular": {
          "name": "regular",
          "file": "https://fonts.gstatic.com/s/poppins/v20/pxiEyp8kv8JHgFVrFJDUc1NECPY.ttf"
        },
        "medium": {
          "name": "500",
          "file": "https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLGT9V1tvFP-KUEg.ttf"
        },
        "semi_bold": {
          "name": "600",
          "file": "https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLEj6V1tvFP-KUEg.ttf"
        },
        "bold": {
          "name": "700",
          "file": "https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLCz7V1tvFP-KUEg.ttf"
        }
      },
      "family": "Poppins"
    },
    "config": {
      "current": "Default",
      "list": [
        {
          "name": "Default",
          "global_config": {
            "static": {
              "props": {
                "colors": {
                  "primary_color": "#000000",
                  "secondary_color": "#000000",
                  "accent_color": "#000000",
                  "link_color": "#4499FF",
                  "button_secondary_color": "#000000",
                  "bg_color": "#F8F8F8"
                },
                "auth": {
                  "show_header_auth": false,
                  "show_footer_auth": false
                },
                "palette": {
                  "general_setting": {
                    "theme": {
                      "page_background": "#F3F3ED",
                      "theme_accent": "#E1D0C8"
                    },
                    "text": {
                      "text_heading": "#26201A",
                      "text_body": "#3C3131",
                      "text_label": "#7D7676",
                      "text_secondary": "#9C9C9C"
                    },
                    "button": {
                      "button_primary": "#4E3F09",
                      "button_secondary": "#FFFFFF",
                      "button_link": "#B1655B"
                    },
                    "sale_discount": {
                      "sale_badge_background": "#FFFFFF",
                      "sale_badge_text": "#1C958F",
                      "sale_discount_text": "#1C958F",
                      "sale_timer": "#994449"
                    },
                    "header": {
                      "header_background": "#F3F3ED",
                      "header_nav": "#261A1A",
                      "header_icon": "#261A1A"
                    },
                    "footer": {
                      "footer_background": "#2C231E",
                      "footer_bottom_background": "#231812",
                      "footer_heading_text": "#FFFFFF",
                      "footer_body_text": "#FFFFFF",
                      "footer_icon": "#FFFFFF"
                    }
                  },
                  "advance_setting": {
                    "overlay_popup": {
                      "dialog_backgroung": "#FFFFFF",
                      "overlay": "#14130E"
                    },
                    "divider_stroke_highlight": {
                      "divider_strokes": "#D4D1D1",
                      "highlight": "#EDECE9"
                    },
                    "user_alerts": {
                      "success_background": "#C2DBC9",
                      "success_text": "#1C958F",
                      "error_background": "#E6D5D5",
                      "error_text": "#B24141",
                      "info_background": "#EBD3BC",
                      "info_text": "#D28F51"
                    }
                  }
                },
                "extension": {
                  "header_top": [],
                  "header_bottom": [],
                  "footer_top": [],
                  "footer_bottom": []
                }
              }
            },
            "custom": {
              "props": {
                "header_bg_color": "#ffffff",
                "header_text_color": "#000000",
                "header_border_color": "#e1e1e1",
                "header_icon_color": "#000000",
                "header_cart_notification_bg_color": "#e8a76c",
                "header_cart_notification_text_color": "#ffffff",
                "header_nav_hover_color": "#999999",
                "button_primary_color": "#ffffff",
                "button_primary_label_color": "#000000",
                "button_add_to_cart_color": "#000000",
                "button_add_to_cart_label_color": "#ffffff",
                "button_secondary_color": "#000000",
                "button_secondary_label_color": "#ffffff",
                "button_tertiary_color": "#000000",
                "button_tertiary_label_color": "#000000",
                "button_tertiary_hover_color": "#000000",
                "button_tertiary_hover_text_color": "#ffffff",
                "text_heading_link_color": "#000000",
                "text_body_color": "#000000",
                "text_price_color": "#000000",
                "text_sale_price_color": "#fb406b",
                "text_strikethrough_price_color": "#9b9b9b",
                "text_discount_color": "#ee478d",
                "footer_bg_color": "#ffffff",
                "footer_text_color": "#999999",
                "footer_border_color": "#e1e1e1",
                "footer_nav_hover_color": "#000000",
                "disable_cart": false,
                "is_menu_below_logo": false,
                "menu_position": "left"
              }
            }
          },
          "page": []
        },
        {
          "name": "Dark",
          "global_config": {
            "static": {
              "props": {
                "colors": {
                  "primary_color": "#000000",
                  "secondary_color": "#000000",
                  "accent_color": "#000000",
                  "link_color": "#4499FF",
                  "button_secondary_color": "#000000",
                  "bg_color": "#F8F8F8"
                },
                "auth": {
                  "show_header_auth": false,
                  "show_footer_auth": false
                },
                "palette": {
                  "general_setting": {
                    "theme": {
                      "page_background": "#F3F3ED",
                      "theme_accent": "#E1D0C8"
                    },
                    "text": {
                      "text_heading": "#26201A",
                      "text_body": "#3C3131",
                      "text_label": "#7D7676",
                      "text_secondary": "#9C9C9C"
                    },
                    "button": {
                      "button_primary": "#4E3F09",
                      "button_secondary": "#FFFFFF",
                      "button_link": "#B1655B"
                    },
                    "sale_discount": {
                      "sale_badge_background": "#FFFFFF",
                      "sale_badge_text": "#1C958F",
                      "sale_discount_text": "#1C958F",
                      "sale_timer": "#994449"
                    },
                    "header": {
                      "header_background": "#F3F3ED",
                      "header_nav": "#261A1A",
                      "header_icon": "#261A1A"
                    },
                    "footer": {
                      "footer_background": "#2C231E",
                      "footer_bottom_background": "#231812",
                      "footer_heading_text": "#FFFFFF",
                      "footer_body_text": "#FFFFFF",
                      "footer_icon": "#FFFFFF"
                    }
                  },
                  "advance_setting": {
                    "overlay_popup": {
                      "dialog_backgroung": "#FFFFFF",
                      "overlay": "#14130E"
                    },
                    "divider_stroke_highlight": {
                      "divider_strokes": "#D4D1D1",
                      "highlight": "#EDECE9"
                    },
                    "user_alerts": {
                      "success_background": "#C2DBC9",
                      "success_text": "#1C958F",
                      "error_background": "#E6D5D5",
                      "error_text": "#B24141",
                      "info_background": "#EBD3BC",
                      "info_text": "#D28F51"
                    }
                  }
                },
                "extension": {
                  "header_top": [],
                  "header_bottom": [],
                  "footer_top": [],
                  "footer_bottom": []
                }
              }
            },
            "custom": {
              "props": {
                "header_bg_color": "#2e3032",
                "header_text_color": "#ffffff",
                "header_border_color": "#FFFFFF",
                "header_icon_color": "#ffffff",
                "header_cart_notification_bg_color": "#FFFFFF",
                "header_cart_notification_text_color": "#2e3032",
                "header_nav_hover_color": "#000000",
                "button_primary_color": "#000000",
                "button_primary_label_color": "#ffffff",
                "button_add_to_cart_color": "#000000",
                "button_add_to_cart_label_color": "#ffffff",
                "button_secondary_color": "#000000",
                "button_secondary_label_color": "#ffffff",
                "button_tertiary_color": "#000000",
                "button_tertiary_label_color": "#000000",
                "button_tertiary_hover_color": "#000000",
                "button_tertiary_hover_text_color": "#ffffff",
                "text_heading_link_color": "#000000",
                "text_body_color": "#000000",
                "text_price_color": "#000000",
                "text_sale_price_color": "#fb406b",
                "text_strikethrough_price_color": "#9b9b9b",
                "text_discount_color": "#ee478d",
                "footer_bg_color": "#2e3032",
                "footer_text_color": "#ffffff",
                "footer_border_color": "#FFFFFF",
                "footer_nav_hover_color": "#ffffff"
              }
            }
          },
          "page": []
        },
        {
          "name": "Blue",
          "global_config": {
            "static": {
              "props": {
                "colors": {
                  "primary_color": "#000000",
                  "secondary_color": "#000000",
                  "accent_color": "#000000",
                  "link_color": "#4499FF",
                  "button_secondary_color": "#000000",
                  "bg_color": "#F8F8F8"
                },
                "auth": {
                  "show_header_auth": false,
                  "show_footer_auth": false
                },
                "palette": {
                  "general_setting": {
                    "theme": {
                      "page_background": "#F3F3ED",
                      "theme_accent": "#E1D0C8"
                    },
                    "text": {
                      "text_heading": "#26201A",
                      "text_body": "#3C3131",
                      "text_label": "#7D7676",
                      "text_secondary": "#9C9C9C"
                    },
                    "button": {
                      "button_primary": "#4E3F09",
                      "button_secondary": "#FFFFFF",
                      "button_link": "#B1655B"
                    },
                    "sale_discount": {
                      "sale_badge_background": "#FFFFFF",
                      "sale_badge_text": "#1C958F",
                      "sale_discount_text": "#1C958F",
                      "sale_timer": "#994449"
                    },
                    "header": {
                      "header_background": "#F3F3ED",
                      "header_nav": "#261A1A",
                      "header_icon": "#261A1A"
                    },
                    "footer": {
                      "footer_background": "#2C231E",
                      "footer_bottom_background": "#231812",
                      "footer_heading_text": "#FFFFFF",
                      "footer_body_text": "#FFFFFF",
                      "footer_icon": "#FFFFFF"
                    }
                  },
                  "advance_setting": {
                    "overlay_popup": {
                      "dialog_backgroung": "#FFFFFF",
                      "overlay": "#14130E"
                    },
                    "divider_stroke_highlight": {
                      "divider_strokes": "#D4D1D1",
                      "highlight": "#EDECE9"
                    },
                    "user_alerts": {
                      "success_background": "#C2DBC9",
                      "success_text": "#1C958F",
                      "error_background": "#E6D5D5",
                      "error_text": "#B24141",
                      "info_background": "#EBD3BC",
                      "info_text": "#D28F51"
                    }
                  }
                },
                "extension": {
                  "header_top": [],
                  "header_bottom": [],
                  "footer_top": [],
                  "footer_bottom": []
                }
              }
            },
            "custom": {
              "props": {
                "header_bg_color": "#7f9ed0",
                "header_text_color": "#FFFFFF",
                "header_border_color": "#FFFFFF",
                "header_icon_color": "#FFFFFF",
                "header_cart_notification_bg_color": "#2e3032",
                "header_cart_notification_text_color": "#FFFFFF",
                "header_nav_hover_color": "#2e3032",
                "button_primary_color": "#ffffff",
                "button_primary_label_color": "#000000",
                "button_add_to_cart_color": "#000000",
                "button_add_to_cart_label_color": "#ffffff",
                "button_secondary_color": "#000000",
                "button_secondary_label_color": "#ffffff",
                "button_tertiary_color": "#000000",
                "button_tertiary_label_color": "#000000",
                "button_tertiary_hover_color": "#000000",
                "button_tertiary_hover_text_color": "#ffffff",
                "text_heading_link_color": "#000000",
                "text_body_color": "#000000",
                "text_price_color": "#000000",
                "text_sale_price_color": "#fb406b",
                "text_strikethrough_price_color": "#9b9b9b",
                "text_discount_color": "#ee478d",
                "footer_bg_color": "#7f9ed0",
                "footer_text_color": "#FFFFFF",
                "footer_border_color": "#FFFFFF",
                "footer_nav_hover_color": "#2e3032"
              }
            }
          },
          "page": []
        }
      ],
      "preset": {
        "pages": [
          {
            "sections": [
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
                    "exact_url": ""
                  }
                },
                "name": "hero_image",
                "props": {
                  "image": {
                    "value": "",
                    "type": "image_picker"
                  },
                  "overlay_layout": {
                    "type": "select",
                    "value": "center"
                  },
                  "overlay_image": {
                    "value": "",
                    "type": "image_picker"
                  },
                  "overlay_text": {
                    "value": "",
                    "type": "text"
                  },
                  "text_color": {
                    "value": "#000",
                    "type": "color"
                  },
                  "button_link": {
                    "type": "url",
                    "value": ""
                  },
                  "button_text": {
                    "value": "Shop Now",
                    "type": "text"
                  },
                  "full_width": {
                    "value": true,
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
                    "exact_url": ""
                  }
                },
                "name": "image_slideshow",
                "props": {
                  "autoplay": {
                    "value": false,
                    "type": "checkbox"
                  },
                  "full_width": {
                    "value": false,
                    "type": "checkbox"
                  },
                  "slide_height": {
                    "value": "adapt",
                    "type": "select"
                  },
                  "slide_interval": {
                    "value": 2,
                    "type": "range"
                  },
                  "title": {
                    "value": "Trending",
                    "type": "text"
                  }
                },
                "preset": {
                  "blocks": [
                    {
                      "name": "Slide"
                    },
                    {
                      "name": "Slide"
                    },
                    {
                      "name": "Slide"
                    }
                  ]
                }
              },
              {
                "blocks": [
                  {
                    "type": "gallery_image",
                    "name": "Image",
                    "props": {
                      "image": {
                        "type": "image_picker",
                        "value": ""
                      },
                      "caption": {
                        "type": "text",
                        "value": ""
                      },
                      "link": {
                        "type": "url",
                        "value": ""
                      }
                    }
                  },
                  {
                    "type": "gallery_image",
                    "name": "Image",
                    "props": {
                      "image": {
                        "type": "image_picker",
                        "value": ""
                      },
                      "caption": {
                        "type": "text",
                        "value": ""
                      },
                      "link": {
                        "type": "url",
                        "value": ""
                      }
                    }
                  },
                  {
                    "type": "gallery_image",
                    "name": "Image",
                    "props": {
                      "image": {
                        "type": "image_picker",
                        "value": ""
                      },
                      "caption": {
                        "type": "text",
                        "value": ""
                      },
                      "link": {
                        "type": "url",
                        "value": ""
                      }
                    }
                  },
                  {
                    "type": "gallery_image",
                    "name": "Image",
                    "props": {
                      "image": {
                        "type": "image_picker",
                        "value": ""
                      },
                      "caption": {
                        "type": "text",
                        "value": ""
                      },
                      "link": {
                        "type": "url",
                        "value": ""
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
                    "exact_url": ""
                  }
                },
                "name": "image_gallery",
                "props": {
                  "title": {
                    "type": "text",
                    "value": "Popular Brands"
                  },
                  "layout": {
                    "value": "grid",
                    "type": "select"
                  },
                  "item_count": {
                    "value": 4,
                    "type": "range"
                  },
                  "cta_text": {
                    "value": "",
                    "type": "text"
                  },
                  "cta_link": {
                    "type": "url",
                    "value": ""
                  },
                  "full_width": {
                    "value": false,
                    "type": "checkbox"
                  }
                },
                "preset": {
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
                    "exact_url": ""
                  }
                },
                "name": "brands_listing",
                "props": {
                  "brand_type": {
                    "value": "all",
                    "type": "radio"
                  },
                  "cta_text": {
                    "value": "View all",
                    "type": "text"
                  },
                  "department": {
                    "type": "department"
                  },
                  "header": {
                    "type": "header"
                  },
                  "items_per_row": {
                    "value": 5,
                    "type": "range"
                  },
                  "layout": {
                    "value": "horizontal",
                    "type": "select"
                  },
                  "title": {
                    "type": "text",
                    "value": "Brands"
                  },
                  "view_options": {
                    "value": "fullview",
                    "type": "select"
                  }
                }
              },
              {
                "blocks": [
                  {
                    "type": "testimonial",
                    "name": "Testimonial",
                    "props": {
                      "testimonialText": {
                        "type": "textarea",
                        "value": ""
                      },
                      "author_name": {
                        "type": "text"
                      },
                      "author_description": {
                        "type": "text",
                        "value": ""
                      },
                      "author_image": {
                        "type": "image_picker",
                        "value": ""
                      }
                    }
                  },
                  {
                    "type": "testimonial",
                    "name": "Testimonial",
                    "props": {
                      "testimonialText": {
                        "type": "textarea",
                        "value": ""
                      },
                      "author_name": {
                        "type": "text"
                      },
                      "author_description": {
                        "type": "text",
                        "value": ""
                      },
                      "author_image": {
                        "type": "image_picker",
                        "value": ""
                      }
                    }
                  },
                  {
                    "type": "testimonial",
                    "name": "Testimonial",
                    "props": {
                      "testimonialText": {
                        "type": "textarea",
                        "value": ""
                      },
                      "author_name": {
                        "type": "text"
                      },
                      "author_description": {
                        "type": "text",
                        "value": ""
                      },
                      "author_image": {
                        "type": "image_picker",
                        "value": ""
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
                    "exact_url": ""
                  }
                },
                "name": "testimonials",
                "props": {
                  "autoplay": {
                    "value": false,
                    "type": "checkbox"
                  },
                  "slide_interval": {
                    "value": 2,
                    "type": "range"
                  }
                },
                "preset": {
                  "blocks": [
                    {
                      "name": "Testimonial"
                    },
                    {
                      "name": "Testimonial"
                    },
                    {
                      "name": "Testimonial"
                    }
                  ]
                }
              }
            ],
            "value": "home"
          }
        ]
      },
      "global_schema": {
        "props": [
          {
            "type": "checkbox",
            "id": "disable_cart",
            "category": "Colors",
            "label": "header"
          }
        ]
      }
    },
    "available_sections": [
      {
        "props": [
          {
            "type": "url",
            "id": "banner_link",
            "label": "Redirect Link"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          }
        ],
        "blocks": [],
        "name": "application_banner",
        "label": "Application Banner"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "title",
            "label": "Title"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          },
          {
            "type": "header",
            "id": "header",
            "value": "Choose Brands to Show"
          },
          {
            "id": "view_options",
            "type": "select",
            "options": [
              {
                "value": "logo",
                "text": "Logo View"
              },
              {
                "value": "fullview",
                "text": "Logo and Banner View"
              }
            ],
            "label": "View Options",
            "info": "Brand card view options"
          },
          {
            "type": "radio",
            "id": "brand_type",
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
            "id": "items_per_row",
            "min": 3,
            "max": 5,
            "step": 1,
            "unit": "",
            "label": "Items per row",
            "info": "Maximum items allowed per row"
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
            "label": "Layout",
            "info": "Alignment of content"
          },
          {
            "type": "text",
            "id": "cta_text",
            "label": "CTA Text"
          }
        ],
        "blocks": [
          {
            "type": "brand_item",
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
        "name": "brands_listing",
        "label": "Brands Listing"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "title",
            "label": "Title"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          },
          {
            "type": "radio",
            "id": "collection_type",
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
            "type": "text",
            "id": "tags_filter",
            "label": "Filter by tags",
            "info": "Filter by Tags "
          },
          {
            "type": "range",
            "id": "items_per_row",
            "min": 3,
            "max": 5,
            "step": 1,
            "unit": "",
            "label": "Max items per row",
            "info": "Maximum items allowed per row"
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
            "label": "Layout",
            "info": "Alignment of content"
          },
          {
            "type": "text",
            "id": "cta_text",
            "label": "CTA Text"
          }
        ],
        "blocks": [
          {
            "type": "collection-item",
            "name": "collection Item",
            "props": [
              {
                "type": "collection",
                "id": "collection",
                "label": "Select Collection"
              }
            ]
          }
        ],
        "name": "collections_listing",
        "label": "Collections Listing"
      },
      {
        "props": [
          {
            "type": "code",
            "id": "code",
            "label": "Custom HTML",
            "info": "Add Your custom HTML Code below. You can also use the full screen icon to open a code editor and add your code"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          }
        ],
        "blocks": [],
        "name": "custom_html",
        "label": "Custom HTML"
      },
      {
        "props": [
          {
            "type": "extension",
            "id": "extension",
            "label": "Extension Positions",
            "info": "Handle extension in these positions",
            "positions": [
              {
                "value": "section_extension",
                "text": ""
              }
            ]
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          }
        ],
        "blocks": [],
        "name": "section_extension",
        "label": "Extensions"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "title",
            "label": "Title"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          },
          {
            "type": "collection",
            "id": "collection",
            "label": "Collection",
            "info": "Select a collection to display its products"
          },
          {
            "type": "range",
            "id": "items_per_row",
            "min": 2,
            "max": 5,
            "step": 1,
            "unit": "",
            "label": "Products per row",
            "info": "Maximum items allowed per row"
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
            "label": "Layout",
            "info": "Alignment of content"
          },
          {
            "type": "checkbox",
            "id": "autoplay",
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
            "info": "Autoplay slide duration"
          }
        ],
        "blocks": [],
        "name": "featured_collection",
        "label": "Featured Collection"
      },
      {
        "props": [
          {
            "id": "image",
            "type": "image_picker",
            "label": "Hero Image"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          },
          {
            "id": "overlay_layout",
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
            "label": "Overlay Layout",
            "info": "Alignment of overlay content"
          },
          {
            "type": "image_picker",
            "id": "overlay_image",
            "label": "Overlay image",
            "info": "Overlay Image"
          },
          {
            "type": "text",
            "id": "overlay_text",
            "label": "Overlay Text"
          },
          {
            "type": "color",
            "id": "text_color",
            "label": "Text Color"
          },
          {
            "type": "url",
            "id": "button_link",
            "label": "Redirect Link"
          },
          {
            "type": "text",
            "id": "button_text",
            "label": "Button Text"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          },
          {
            "type": "checkbox",
            "id": "fullscreen_image",
            "label": "Fullscreen Banner ",
            "info": "Check to allow items to take entire viewport"
          }
        ],
        "blocks": [],
        "name": "hero_image",
        "label": "Hero Image"
      },
      {
        "props": [
          {
            "type": "video",
            "id": "videoFile",
            "label": "Primary Video"
          },
          {
            "id": "videoUrl",
            "type": "text",
            "label": "Video URL",
            "info": "Supports MP4 Video & Youtube Video URL"
          },
          {
            "type": "checkbox",
            "id": "autoplay",
            "label": "Autoplay",
            "info": "Check to enable autoplay (Video will be muted if autoplay is active)"
          },
          {
            "type": "checkbox",
            "id": "hidecontrols",
            "label": "Hide Video Controls",
            "info": "check to disable video controls"
          },
          {
            "type": "checkbox",
            "id": "showloop",
            "label": "Play Video in Loop",
            "info": "check to disable Loop"
          },
          {
            "type": "text",
            "id": "title",
            "label": "Heading"
          },
          {
            "id": "coverUrl",
            "type": "image_picker",
            "label": "Thumbnail Image"
          }
        ],
        "blocks": [],
        "name": "hero_video-v2",
        "label": "Hero Video V2"
      },
      {
        "props": [
          {
            "id": "video_url",
            "type": "text",
            "label": "Video URL",
            "info": "Supports MP4 Video & Youtube Video URL"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          },
          {
            "type": "checkbox",
            "id": "autoplay",
            "label": "Autoplay",
            "info": "Check to enable autoplay (Video will be muted if autoplay is active)"
          },
          {
            "type": "checkbox",
            "id": "controls",
            "label": "Video Controls",
            "info": "Uncheck to disable video controls"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          },
          {
            "type": "checkbox",
            "id": "bg_video",
            "label": "Video In Background",
            "info": "Use video in background with overlay (Overlay Image & Video Controls will be disabled by default on website)"
          },
          {
            "type": "select",
            "id": "size",
            "options": [
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
              },
              {
                "value": "adapt",
                "text": "Adapt"
              },
              {
                "value": "fullscreen",
                "text": "Fullscreen"
              }
            ],
            "label": "Video Height",
            "info": "Height of Video"
          },
          {
            "type": "checkbox",
            "id": "enable_overlay_image",
            "label": "Enable Overlay Image"
          },
          {
            "id": "cover_url",
            "type": "image_picker",
            "label": "Video Overlay Image"
          },
          {
            "type": "checkbox",
            "id": "enable_overlay_color",
            "label": "Enable Overlay Colour"
          },
          {
            "type": "color",
            "id": "overlay_color",
            "label": "Overlay Color"
          },
          {
            "type": "range",
            "id": "overlay_opacity",
            "min": 0,
            "max": 1,
            "step": 0.1,
            "unit": "",
            "label": "Overlay Opacity"
          },
          {
            "type": "select",
            "id": "overlay_size",
            "options": [
              {
                "value": "container",
                "text": "Container (Default)"
              },
              {
                "value": "content",
                "text": "Content"
              }
            ],
            "label": "Overlay Size"
          },
          {
            "id": "overlay_position",
            "type": "select",
            "options": [
              {
                "value": "top-left",
                "text": "Top Left"
              },
              {
                "value": "top-center",
                "text": "Top Center"
              },
              {
                "value": "top-right",
                "text": "Top Right"
              },
              {
                "value": "center-left",
                "text": "Center Left"
              },
              {
                "value": "center-center",
                "text": "Center (Default)"
              },
              {
                "value": "center-right",
                "text": "Center Right"
              },
              {
                "value": "bottom-left",
                "text": "Bottom Left"
              },
              {
                "value": "bottom-center",
                "text": "Bottom Center"
              },
              {
                "value": "bottom-right",
                "text": "Bottom right"
              }
            ],
            "label": "Overlay position",
            "info": "Alignment of Overlay content(heading, sub-heading, button)"
          },
          {
            "type": "text",
            "id": "heading",
            "label": "Heading"
          },
          {
            "type": "color",
            "id": "heading_color",
            "label": "Heading Text Color"
          },
          {
            "type": "text",
            "id": "sub_heading",
            "label": "Sub-heading"
          },
          {
            "type": "color",
            "id": "sub_heading_color",
            "label": "Sub-heading Text Color"
          },
          {
            "type": "url",
            "id": "button_link",
            "label": "Redirect Link"
          },
          {
            "type": "text",
            "id": "button_text",
            "label": "Button Text"
          }
        ],
        "blocks": [],
        "name": "hero_video",
        "label": "Hero Video"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "title",
            "label": "Title"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
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
            "label": "Layout",
            "info": "Alignment of content"
          },
          {
            "type": "range",
            "id": "item_count",
            "min": 3,
            "max": 4,
            "step": 1,
            "unit": "",
            "label": "No of items",
            "info": "Maximum items allowed per row for Horizontal view, for gallery max 5 are viewable and only 5 blocks are required"
          },
          {
            "type": "text",
            "id": "cta_text",
            "label": "CTA Text"
          },
          {
            "type": "url",
            "id": "cta_link",
            "label": "CTA Link",
            "info": "Link to redirect"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
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
                "type": "text",
                "id": "caption",
                "label": "Image Caption"
              },
              {
                "type": "url",
                "id": "link",
                "label": "Link",
                "info": "Link to redirect"
              }
            ]
          }
        ],
        "name": "image_gallery",
        "label": "Image Gallery",
        "preset": {
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
            "type": "text",
            "id": "title",
            "label": "Title"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          },
          {
            "type": "checkbox",
            "id": "autoplay",
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
            "info": "Autoplay slide duration"
          },
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
            "label": "Slide height",
            "info": "Size of the slide"
          },
          {
            "type": "checkbox",
            "id": "full_width",
            "label": "Full width",
            "info": "Check to allow items to take entire width of the viewport"
          }
        ],
        "blocks": [
          {
            "type": "image_slide",
            "name": "Slide",
            "props": [
              {
                "type": "image_picker",
                "id": "image",
                "label": "Image"
              },
              {
                "type": "url",
                "id": "slide_link",
                "label": "Slide Link"
              }
            ]
          }
        ],
        "name": "image_slideshow",
        "label": "Image Slideshow",
        "preset": {
          "blocks": [
            {
              "name": "Slide"
            },
            {
              "name": "Slide"
            },
            {
              "name": "Slide"
            }
          ]
        }
      },
      {
        "props": [
          {
            "type": "image_picker",
            "id": "image",
            "label": "Image"
          },
          {
            "id": "video",
            "type": "url",
            "label": "Video"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          },
          {
            "id": "cover",
            "type": "url",
            "label": "Video Cover Image"
          },
          {
            "type": "select",
            "id": "media_alignment",
            "options": [
              {
                "value": "left",
                "text": "Left"
              },
              {
                "value": "center",
                "text": "Center"
              },
              {
                "value": "right",
                "text": "Right"
              }
            ],
            "label": "Media Alignment"
          },
          {
            "type": "text",
            "id": "heading",
            "label": "Heading"
          },
          {
            "type": "text",
            "id": "text Pair large text with an image to give focus to your chosen product, collection, or blog post. Add details on availability, style, or even provide a review.",
            "label": "Text"
          },
          {
            "type": "select",
            "id": "text_alignment",
            "options": [
              {
                "value": "left",
                "text": "Left"
              },
              {
                "value": "center",
                "text": "Center"
              },
              {
                "value": "right",
                "text": "Right"
              }
            ],
            "label": "Text Alignment"
          }
        ],
        "blocks": [],
        "name": "media_with_text",
        "label": "Media with text"
      },
      {
        "props": [
          {
            "type": "text",
            "id": "title",
            "label": "Title"
          },
          {
            "type": "range",
            "id": "margin_top",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Top Margin"
          },
          {
            "type": "range",
            "id": "margin_bottom",
            "min": 0,
            "max": 1000,
            "step": 1,
            "unit": "px",
            "label": "Section Bottom Margin"
          },
          {
            "type": "checkbox",
            "id": "autoplay",
            "label": "AutoPlay Slides"
          },
          {
            "type": "range",
            "id": "slide_interval",
            "min": 1,
            "max": 10,
            "step": 1,
            "unit": "sec",
            "label": "Change slides every"
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
                "info": "Text for testimonial",
                "placeholder": "Text"
              },
              {
                "type": "text",
                "id": "author_name",
                "label": "Author name"
              },
              {
                "type": "text",
                "id": "author_description",
                "label": "Author Description"
              },
              {
                "type": "image_picker",
                "id": "author_image",
                "label": "Author Image"
              }
            ]
          }
        ],
        "name": "testimonials",
        "label": "Testimonial",
        "preset": {
          "blocks": [
            {
              "name": "Testimonial"
            },
            {
              "name": "Testimonial"
            },
            {
              "name": "Testimonial"
            }
          ]
        }
      }
    ],
    "src": "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/organization/64aec4634bc407961ed265c5/theme/assets/Gpbt5naNG-archive.zip"
  }
}
```
</details>

</details>









---


#### getOrganizationThemes
Get organization's themes




```swift
partnerClient.theme.getOrganizationThemes(organizationId: organizationId, status: status, pageSize: pageSize, pageNo: pageNo) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| organizationId | String | yes | Id of your organization |   
| status | String? | no | The status of the theme |   
| pageSize | Int? | no | Number of themes per page |   
| pageNo | Int? | no | Page number to retrieve |  



Get organization's themes

*Returned Response:*




[MarketplaceThemeSchema](#MarketplaceThemeSchema)

Successful operation




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getOrganizationThemeDetails
Get theme details for an organization




```swift
partnerClient.theme.getOrganizationThemeDetails(organizationId: organizationId, themeId: themeId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| organizationId | String | yes | The ID of the organization |   
| themeId | String | yes | The ID of the theme |  



Fetches the theme details for a specific organization and theme ID

*Returned Response:*




[MarketplaceTheme](#MarketplaceTheme)

Successful response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### updateDraftTheme
Update theme draft/submitted




```swift
partnerClient.theme.updateDraftTheme(organizationId: organizationId, themeId: themeId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| organizationId | String | yes | The ID of the organization |   
| themeId | String | yes | The ID of the theme |  
| body | MarketplaceTheme | yes | Request body |


Update theme draft/submitted

*Returned Response:*




[MarketplaceTheme](#MarketplaceTheme)

Theme updated successfully




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; example1</i></summary>

```json
{
  "value": {
    "_id": "64be51bee7048a025f4fb0b8",
    "payment": {
      "is_paid": false,
      "amount": 0
    },
    "contact": {
      "developer_contact": [
        "test@gofynd.com"
      ],
      "seller_contact": "test@gofynd.com"
    },
    "industry": [
      "Business equipment and supplies",
      "Books, music, and video",
      "Clothing"
    ],
    "is_update": false,
    "is_default": false,
    "name": "White-Splash",
    "tagline": "Where Style Meets Artistry",
    "description": "Kartmax is the perfect theme to get you started with your store. Capture audiences' attention through captivating layouts inspired by editorial design, striking typography, and impactful hero sections. Embrace a contemporary narrative that exudes personality and brings your content to life.",
    "catalog_size": {
      "min": 200,
      "max": 0
    },
    "images": {
      "desktop": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/EXo5oubRa-desktop.png",
      "mobile": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/PY-1mmO03-mobile.png"
    },
    "carousel": [
      {
        "desktop": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/EXo5oubRa-desktop.png",
        "mobile": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/fhPI_ADIa-carousel_mobile_0.png"
      },
      {
        "desktop": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/EXo5oubRa-desktop.png",
        "mobile": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/u3zWsTqM5-carousel_mobile_1.png"
      },
      {
        "desktop": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/EXo5oubRa-desktop.png",
        "mobile": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/fhPI_ADIa-carousel_mobile_0.png"
      },
      {
        "desktop": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/EXo5oubRa-desktop.png",
        "mobile": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/fhPI_ADIa-carousel_mobile_0.png"
      }
    ],
    "src": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/general/free/original/zrIW3mA4G-White-Splash_1.0.157.zip",
    "explore": {
      "title": "Elevate Your Shopping Experience",
      "description": "Designed to cater to extensive carts and inventories, featuring a prominent search bar and the choice for a permanently visible cart sidebar."
    },
    "features": [
      {
        "category": "Home Sections",
        "list": [
          {
            "label": "Video",
            "description": "Video as a section"
          },
          {
            "label": "Carousel",
            "description": "Carousel as a section"
          }
        ]
      },
      {
        "category": "Authentication",
        "list": [
          {
            "label": "Standard Login Interface",
            "description": "Deafult Login Interface, use this if you have not implmented custom login interface for login, register flows inside your theme code."
          },
          {
            "label": "Login with Email",
            "description": "This is be default available in Standard Login Interface. If custom login interface is used, check your implmentation."
          },
          {
            "label": "Login with Mobile Number",
            "description": "This is be default available in Standard Login Interface. If custom login interface is used, check your implmentation."
          },
          {
            "label": "Voice OTP",
            "description": "This is be default available in Standard Login Interface. If custom login interface is used, check your implmentation."
          },
          {
            "label": "Social Media login",
            "description": "This is be default available in Standard Login Interface. If custom login interface is used, check your implmentation."
          }
        ]
      },
      {
        "category": "Cart & Checkout",
        "list": [
          {
            "label": "Guest Checkout",
            "description": "Enables customer to buy a product without login"
          },
          {
            "label": "Customized Cart",
            "description": "--"
          }
        ]
      },
      {
        "category": "Product Description",
        "list": [
          {
            "label": "Buy Now",
            "description": "Buy Now flow support along with Add to Cart"
          },
          {
            "label": "Product Videos",
            "description": "Videos present in product catalog can be shown"
          },
          {
            "label": "3D Model of Product",
            "description": "3D Models present in product catalog can be shown"
          },
          {
            "label": "Product Variants",
            "description": "Show variants of a particular product"
          },
          {
            "label": "Extension Support",
            "description": "Supports various extensions made for Prdouct Page"
          },
          {
            "label": "Default Size Selection",
            "description": "By default select one size"
          },
          {
            "label": "Product Highlights",
            "description": "Show highlights added in the cartalog"
          },
          {
            "label": "Short Description",
            "description": "Show short description from catalog in PDP"
          }
        ]
      },
      {
        "category": "Product Listing",
        "list": [
          {
            "label": "Infinite Scroll",
            "description": "Infinite scrolling support using lazy loady"
          },
          {
            "label": "Discount Badges",
            "description": "Show discount or custom badges on Product tiles"
          },
          {
            "label": "Product Variants",
            "description": "Supports showcase various variants on the listing itself"
          }
        ]
      },
      {
        "category": "Navigation",
        "list": [
          {
            "label": "Customizable Navigation Menu",
            "description": "Customize Navigation Menu to accomodate multiple desings"
          }
        ]
      },
      {
        "category": "SEO",
        "list": [
          {
            "label": "alt text",
            "description": "Alt text data received in API is used on Product Images"
          }
        ]
      }
    ],
    "highlights": [
      {
        "title": "Styles and Colours",
        "description": "With custom colours and styles, you can modify the appearance of your entire store or particular sections for specific events, marketing drives, or whenever des",
        "image": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/xD9aRhQIO-highlight_0.png"
      },
      {
        "title": "Enhanced Navigation and Menu:",
        "description": "Unleash the full potential of your header by showcasing images, videos, products, and collections in an enhanced dropdown menu. Improve the browsing experience ",
        "image": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/xD9aRhQIO-highlight_0.png"
      }
    ],
    "variations": [
      {
        "name": "default",
        "color": "#35919b",
        "demo_url": "nx7zjzx4i.hostx1.de",
        "images": {
          "desktop": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/EXo5oubRa-desktop.png",
          "mobile": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/PY-1mmO03-mobile.png"
        }
      }
    ],
    "documentation": {
      "notes": "<p>White splash user documentation</p>",
      "url": ""
    },
    "status": "published",
    "step": 7,
    "comments": {
      "developer_remark": "White Splash fyndx1 theme submission",
      "reviewer_feedback": ""
    },
    "release": {
      "version": "1.0.157",
      "notes": "<p>White-splash release notes. Fyndx1 theme submission.</p>"
    },
    "slug": "white-splash",
    "organization_id": "64aec4634bc407961ed265c5",
    "user_id": "ce6432937739e49875dedae0",
    "created_at": "2023-07-24T10:26:06.612Z",
    "updated_at": "2023-07-24T10:26:37.894Z",
    "template_theme_id": "64be51dd44650d20b5b15f18",
    "theme_type": "vue2"
  }
}
```
</details>

<details>
<summary><i>&nbsp; example2</i></summary>

```json
{
  "value": {
    "catalog_size": {
      "min": 0,
      "max": 0
    },
    "payment": {
      "is_paid": false,
      "amount": 0
    },
    "explore": {
      "title": "",
      "description": ""
    },
    "documentation": {
      "notes": "",
      "url": ""
    },
    "contact": {
      "developer_contact": [],
      "seller_contact": ""
    },
    "comments": {
      "developer_remark": "",
      "reviewer_feedback": ""
    },
    "release": {
      "version": "1.0.0",
      "notes": "<p>Release note test</p>"
    },
    "industry": [],
    "is_update": false,
    "is_default": false,
    "theme_type": "vue2",
    "_id": "64cb9d131239c4e21fa0e7a3",
    "name": "X1 Sanity Test",
    "tagline": "test",
    "description": "test",
    "images": {
      "desktop": "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/IiBdydAkw-EXo5oubRa-desktop.png",
      "mobile": "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/ZTATfW8Oe-PY-1mmO03-mobile.png"
    },
    "carousel": [
      {
        "desktop": "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/1U3wS93Kx-carousel_desktop_0.png",
        "mobile": "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/xoLlqTg6W-carousel_mobile_0.png"
      },
      {
        "desktop": "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/1U3wS93Kx-carousel_desktop_0.png",
        "mobile": "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/xoLlqTg6W-carousel_mobile_0.png"
      },
      {
        "desktop": "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/1U3wS93Kx-carousel_desktop_0.png",
        "mobile": "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/xoLlqTg6W-carousel_mobile_0.png"
      },
      {
        "desktop": "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/1U3wS93Kx-carousel_desktop_0.png",
        "mobile": "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/xoLlqTg6W-carousel_mobile_0.png"
      }
    ],
    "src": "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/general/free/original/jMpHx4fM7-Archive.zip",
    "features": [
      {
        "category": "",
        "list": []
      }
    ],
    "highlights": [
      {
        "title": "",
        "description": "",
        "image": ""
      }
    ],
    "variations": [
      {
        "name": "default",
        "color": "#35919b",
        "demo_url": "",
        "images": {
          "desktop": "",
          "mobile": ""
        }
      }
    ],
    "status": "draft",
    "step": 2,
    "slug": "x1-sanity-test",
    "organization_id": "64aec4634bc407961ed265c5",
    "user_id": "6c62ef5b0770d76cabdc24c3",
    "created_at": "2023-08-03T12:26:59.652Z",
    "updated_at": "2023-08-05T08:59:06.697Z",
    "id": "64cb9d131239c4e21fa0e7a3"
  }
}
```
</details>

</details>









---


#### submitOrganizationTheme
Submit a theme




```swift
partnerClient.theme.submitOrganizationTheme(organizationId: organizationId, themeId: themeId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| organizationId | String | yes | The ID of the organization |   
| themeId | String | yes | The ID of the theme |  
| body | MarketplaceTheme | yes | Request body |


Use this api to Submit a theme

*Returned Response:*




[MarketplaceTheme](#MarketplaceTheme)

Theme updated successfully




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; example1</i></summary>

```json
{
  "value": {
    "_id": "64be51bee7048a025f4fb0b8",
    "payment": {
      "is_paid": false,
      "amount": 0
    },
    "contact": {
      "developer_contact": [
        "test@gofynd.com"
      ],
      "seller_contact": "test@gofynd.com"
    },
    "industry": [
      "Business equipment and supplies",
      "Books, music, and video",
      "Clothing"
    ],
    "is_update": false,
    "is_default": false,
    "name": "White-Splash",
    "tagline": "Where Style Meets Artistry",
    "description": "Kartmax is the perfect theme to get you started with your store. Capture audiences' attention through captivating layouts inspired by editorial design, striking typography, and impactful hero sections. Embrace a contemporary narrative that exudes personality and brings your content to life.",
    "catalog_size": {
      "min": 200,
      "max": 0
    },
    "images": {
      "desktop": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/EXo5oubRa-desktop.png",
      "mobile": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/PY-1mmO03-mobile.png"
    },
    "carousel": [
      {
        "desktop": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/EXo5oubRa-desktop.png",
        "mobile": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/fhPI_ADIa-carousel_mobile_0.png"
      },
      {
        "desktop": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/EXo5oubRa-desktop.png",
        "mobile": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/u3zWsTqM5-carousel_mobile_1.png"
      },
      {
        "desktop": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/EXo5oubRa-desktop.png",
        "mobile": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/fhPI_ADIa-carousel_mobile_0.png"
      },
      {
        "desktop": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/EXo5oubRa-desktop.png",
        "mobile": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/fhPI_ADIa-carousel_mobile_0.png"
      }
    ],
    "src": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/general/free/original/zrIW3mA4G-White-Splash_1.0.157.zip",
    "explore": {
      "title": "Elevate Your Shopping Experience",
      "description": "Designed to cater to extensive carts and inventories, featuring a prominent search bar and the choice for a permanently visible cart sidebar."
    },
    "features": [
      {
        "category": "Home Sections",
        "list": [
          {
            "label": "Video",
            "description": "Video as a section"
          },
          {
            "label": "Carousel",
            "description": "Carousel as a section"
          }
        ]
      },
      {
        "category": "Authentication",
        "list": [
          {
            "label": "Standard Login Interface",
            "description": "Deafult Login Interface, use this if you have not implmented custom login interface for login, register flows inside your theme code."
          },
          {
            "label": "Login with Email",
            "description": "This is be default available in Standard Login Interface. If custom login interface is used, check your implmentation."
          },
          {
            "label": "Login with Mobile Number",
            "description": "This is be default available in Standard Login Interface. If custom login interface is used, check your implmentation."
          },
          {
            "label": "Voice OTP",
            "description": "This is be default available in Standard Login Interface. If custom login interface is used, check your implmentation."
          },
          {
            "label": "Social Media login",
            "description": "This is be default available in Standard Login Interface. If custom login interface is used, check your implmentation."
          }
        ]
      },
      {
        "category": "Cart & Checkout",
        "list": [
          {
            "label": "Guest Checkout",
            "description": "Enables customer to buy a product without login"
          },
          {
            "label": "Customized Cart",
            "description": "--"
          }
        ]
      },
      {
        "category": "Product Description",
        "list": [
          {
            "label": "Buy Now",
            "description": "Buy Now flow support along with Add to Cart"
          },
          {
            "label": "Product Videos",
            "description": "Videos present in product catalog can be shown"
          },
          {
            "label": "3D Model of Product",
            "description": "3D Models present in product catalog can be shown"
          },
          {
            "label": "Product Variants",
            "description": "Show variants of a particular product"
          },
          {
            "label": "Extension Support",
            "description": "Supports various extensions made for Prdouct Page"
          },
          {
            "label": "Default Size Selection",
            "description": "By default select one size"
          },
          {
            "label": "Product Highlights",
            "description": "Show highlights added in the cartalog"
          },
          {
            "label": "Short Description",
            "description": "Show short description from catalog in PDP"
          }
        ]
      },
      {
        "category": "Product Listing",
        "list": [
          {
            "label": "Infinite Scroll",
            "description": "Infinite scrolling support using lazy loady"
          },
          {
            "label": "Discount Badges",
            "description": "Show discount or custom badges on Product tiles"
          },
          {
            "label": "Product Variants",
            "description": "Supports showcase various variants on the listing itself"
          }
        ]
      },
      {
        "category": "Navigation",
        "list": [
          {
            "label": "Customizable Navigation Menu",
            "description": "Customize Navigation Menu to accomodate multiple desings"
          }
        ]
      },
      {
        "category": "SEO",
        "list": [
          {
            "label": "alt text",
            "description": "Alt text data received in API is used on Product Images"
          }
        ]
      }
    ],
    "highlights": [
      {
        "title": "Styles and Colours",
        "description": "With custom colours and styles, you can modify the appearance of your entire store or particular sections for specific events, marketing drives, or whenever des",
        "image": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/xD9aRhQIO-highlight_0.png"
      },
      {
        "title": "Enhanced Navigation and Menu:",
        "description": "Unleash the full potential of your header by showcasing images, videos, products, and collections in an enhanced dropdown menu. Improve the browsing experience ",
        "image": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/xD9aRhQIO-highlight_0.png"
      }
    ],
    "variations": [
      {
        "name": "default",
        "color": "#35919b",
        "demo_url": "nx7zjzx4i.hostx1.de",
        "images": {
          "desktop": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/EXo5oubRa-desktop.png",
          "mobile": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/PY-1mmO03-mobile.png"
        }
      }
    ],
    "documentation": {
      "notes": "<p>White splash user documentation</p>",
      "url": ""
    },
    "status": "published",
    "step": 7,
    "comments": {
      "developer_remark": "White Splash fyndx1 theme submission",
      "reviewer_feedback": ""
    },
    "release": {
      "version": "1.0.157",
      "notes": "<p>White-splash release notes. Fyndx1 theme submission.</p>"
    },
    "slug": "white-splash",
    "organization_id": "64aec4634bc407961ed265c5",
    "user_id": "ce6432937739e49875dedae0",
    "created_at": "2023-07-24T10:26:06.612Z",
    "updated_at": "2023-07-24T10:26:37.894Z",
    "template_theme_id": "64be51dd44650d20b5b15f18",
    "theme_type": "vue2"
  }
}
```
</details>

</details>









---


#### deleteOrganizationTheme
Delete a theme




```swift
partnerClient.theme.deleteOrganizationTheme(organizationId: organizationId, themeId: themeId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| organizationId | String | yes | The ID of the organization |   
| themeId | String | yes | The ID of the theme |  



This endpoint allows you to delete a theme by providing the organization and theme IDs.

*Returned Response:*




[MarketplaceTheme](#MarketplaceTheme)

Successful deletion of the theme




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getLatestVersionOfThemeBySlug
Get latest version of specified theme




```swift
partnerClient.theme.getLatestVersionOfThemeBySlug(organizationId: organizationId, slugName: slugName) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| organizationId | String | yes | The ID of the organization |   
| slugName | String | yes | Slug of theme |  



Use this api to get latest version of specified theme

*Returned Response:*




[[MarketplaceTheme]](#[MarketplaceTheme])

Successful operation




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### createNewThemeInOrganization
Create a new theme for the organization




```swift
partnerClient.theme.createNewThemeInOrganization(organizationId: organizationId, slug: slug, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| organizationId | String | yes | The ID of the organization |   
| slug | String? | no | The slug of the theme. |  
| body | MarketplaceTheme | yes | Request body |


Use this api to create a new theme for the organization

*Returned Response:*




[MarketplaceTheme](#MarketplaceTheme)

Theme updated successfully




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; example1</i></summary>

```json
{
  "value": {
    "_id": "64be51bee7048a025f4fb0b8",
    "payment": {
      "is_paid": false,
      "amount": 0
    },
    "contact": {
      "developer_contact": [
        "test@gofynd.com"
      ],
      "seller_contact": "test@gofynd.com"
    },
    "industry": [
      "Business equipment and supplies",
      "Books, music, and video",
      "Clothing"
    ],
    "is_update": false,
    "is_default": false,
    "name": "White-Splash",
    "tagline": "Where Style Meets Artistry",
    "description": "Kartmax is the perfect theme to get you started with your store. Capture audiences' attention through captivating layouts inspired by editorial design, striking typography, and impactful hero sections. Embrace a contemporary narrative that exudes personality and brings your content to life.",
    "catalog_size": {
      "min": 200,
      "max": 0
    },
    "images": {
      "desktop": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/EXo5oubRa-desktop.png",
      "mobile": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/PY-1mmO03-mobile.png"
    },
    "carousel": [
      {
        "desktop": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/EXo5oubRa-desktop.png",
        "mobile": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/fhPI_ADIa-carousel_mobile_0.png"
      },
      {
        "desktop": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/EXo5oubRa-desktop.png",
        "mobile": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/u3zWsTqM5-carousel_mobile_1.png"
      },
      {
        "desktop": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/EXo5oubRa-desktop.png",
        "mobile": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/fhPI_ADIa-carousel_mobile_0.png"
      },
      {
        "desktop": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/EXo5oubRa-desktop.png",
        "mobile": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/fhPI_ADIa-carousel_mobile_0.png"
      }
    ],
    "src": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/general/free/original/zrIW3mA4G-White-Splash_1.0.157.zip",
    "explore": {
      "title": "Elevate Your Shopping Experience",
      "description": "Designed to cater to extensive carts and inventories, featuring a prominent search bar and the choice for a permanently visible cart sidebar."
    },
    "features": [
      {
        "category": "Home Sections",
        "list": [
          {
            "label": "Video",
            "description": "Video as a section"
          },
          {
            "label": "Carousel",
            "description": "Carousel as a section"
          }
        ]
      },
      {
        "category": "Authentication",
        "list": [
          {
            "label": "Standard Login Interface",
            "description": "Deafult Login Interface, use this if you have not implmented custom login interface for login, register flows inside your theme code."
          },
          {
            "label": "Login with Email",
            "description": "This is be default available in Standard Login Interface. If custom login interface is used, check your implmentation."
          },
          {
            "label": "Login with Mobile Number",
            "description": "This is be default available in Standard Login Interface. If custom login interface is used, check your implmentation."
          },
          {
            "label": "Voice OTP",
            "description": "This is be default available in Standard Login Interface. If custom login interface is used, check your implmentation."
          },
          {
            "label": "Social Media login",
            "description": "This is be default available in Standard Login Interface. If custom login interface is used, check your implmentation."
          }
        ]
      },
      {
        "category": "Cart & Checkout",
        "list": [
          {
            "label": "Guest Checkout",
            "description": "Enables customer to buy a product without login"
          },
          {
            "label": "Customized Cart",
            "description": "--"
          }
        ]
      },
      {
        "category": "Product Description",
        "list": [
          {
            "label": "Buy Now",
            "description": "Buy Now flow support along with Add to Cart"
          },
          {
            "label": "Product Videos",
            "description": "Videos present in product catalog can be shown"
          },
          {
            "label": "3D Model of Product",
            "description": "3D Models present in product catalog can be shown"
          },
          {
            "label": "Product Variants",
            "description": "Show variants of a particular product"
          },
          {
            "label": "Extension Support",
            "description": "Supports various extensions made for Prdouct Page"
          },
          {
            "label": "Default Size Selection",
            "description": "By default select one size"
          },
          {
            "label": "Product Highlights",
            "description": "Show highlights added in the cartalog"
          },
          {
            "label": "Short Description",
            "description": "Show short description from catalog in PDP"
          }
        ]
      },
      {
        "category": "Product Listing",
        "list": [
          {
            "label": "Infinite Scroll",
            "description": "Infinite scrolling support using lazy loady"
          },
          {
            "label": "Discount Badges",
            "description": "Show discount or custom badges on Product tiles"
          },
          {
            "label": "Product Variants",
            "description": "Supports showcase various variants on the listing itself"
          }
        ]
      },
      {
        "category": "Navigation",
        "list": [
          {
            "label": "Customizable Navigation Menu",
            "description": "Customize Navigation Menu to accomodate multiple desings"
          }
        ]
      },
      {
        "category": "SEO",
        "list": [
          {
            "label": "alt text",
            "description": "Alt text data received in API is used on Product Images"
          }
        ]
      }
    ],
    "highlights": [
      {
        "title": "Styles and Colours",
        "description": "With custom colours and styles, you can modify the appearance of your entire store or particular sections for specific events, marketing drives, or whenever des",
        "image": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/xD9aRhQIO-highlight_0.png"
      },
      {
        "title": "Enhanced Navigation and Menu:",
        "description": "Unleash the full potential of your header by showcasing images, videos, products, and collections in an enhanced dropdown menu. Improve the browsing experience ",
        "image": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/xD9aRhQIO-highlight_0.png"
      }
    ],
    "variations": [
      {
        "name": "default",
        "color": "#35919b",
        "demo_url": "nx7zjzx4i.hostx1.de",
        "images": {
          "desktop": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/EXo5oubRa-desktop.png",
          "mobile": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/pictures/free-icon/original/PY-1mmO03-mobile.png"
        }
      }
    ],
    "documentation": {
      "notes": "<p>White splash user documentation</p>",
      "url": ""
    },
    "status": "published",
    "step": 7,
    "comments": {
      "developer_remark": "White Splash fyndx1 theme submission",
      "reviewer_feedback": ""
    },
    "release": {
      "version": "1.0.157",
      "notes": "<p>White-splash release notes. Fyndx1 theme submission.</p>"
    },
    "slug": "white-splash",
    "organization_id": "64aec4634bc407961ed265c5",
    "user_id": "ce6432937739e49875dedae0",
    "created_at": "2023-07-24T10:26:06.612Z",
    "updated_at": "2023-07-24T10:26:37.894Z",
    "template_theme_id": "64be51dd44650d20b5b15f18",
    "theme_type": "vue2"
  }
}
```
</details>

</details>









---


#### getThemeRejectionReasons
Get theme rejection reasons




```swift
partnerClient.theme.getThemeRejectionReasons(organizationId: organizationId, themeId: themeId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| organizationId | String | yes | The ID of the organization |   
| themeId | String | yes | The ID of the theme |  



Use this api to get theme rejection reasons

*Returned Response:*




[ThemeRejectionReasons](#ThemeRejectionReasons)

Theme rejection reasons retrieved successfully




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getThemeVersions
Get theme versions




```swift
partnerClient.theme.getThemeVersions(organizationId: organizationId, themeSlug: themeSlug, pageSize: pageSize, pageNo: pageNo) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| organizationId | String | yes | The ID of the organization. |   
| themeSlug | String | yes | The slug of the theme. |   
| pageSize | Int? | no | The number of items to return per page. |   
| pageNo | Int? | no | The page number to return. |  



Retrieve a list of theme versions for a specific theme in an organization.

*Returned Response:*




[MarketplaceThemeSchema](#MarketplaceThemeSchema)

Successful operation.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---



### Schemas

 
 
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


 
 
 #### [MarketplaceThemeSchema](#MarketplaceThemeSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | themes | [[MarketplaceTheme](#MarketplaceTheme)]? |  yes  |  |
 | page | [PaginationSchema](#PaginationSchema)? |  yes  |  |

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


 
 
 #### [BlitzkriegApiErrorSchema](#BlitzkriegApiErrorSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [BlitzkriegInternalServerErrorSchema](#BlitzkriegInternalServerErrorSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [ThemesSchema](#ThemesSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | font | [Font](#Font)? |  yes  |  |
 | config | [Config](#Config)? |  yes  |  |
 | applied | Bool? |  yes  | Whether the theme has been applied or not |
 | isPrivate | Bool? |  yes  | Whether the theme is private or not |
 | tags | [String]? |  yes  | An array of tags associated with the theme |
 | id | String? |  yes  | The unique identifier of the theme |
 | applicationId | String? |  yes  | The ID of the application |
 | marketplaceThemeId | String? |  yes  | The ID of the theme in the marketplace |
 | meta | [Meta](#Meta)? |  yes  |  |
 | name | String? |  yes  | The name of the theme |
 | templateThemeId | String? |  yes  | The ID of the template theme |
 | version | String? |  yes  | The version of the theme |
 | styles | [String: Any]? |  yes  | The styles associated with the theme |
 | createdAt | String? |  yes  | The creation timestamp of the theme |
 | updatedAt | String? |  yes  | The last update timestamp of the theme |
 | assets | [Assets](#Assets)? |  yes  |  |
 | availableSections | [[SectionItem](#SectionItem)]? |  yes  | Available sections information |

---


 
 
 #### [Font](#Font)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | variants | [FontVariants](#FontVariants) |  no  |  |
 | family | String |  no  | The font family |

---


 
 
 #### [FontVariants](#FontVariants)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | light | [FontVariant](#FontVariant)? |  yes  |  |
 | regular | [FontVariant](#FontVariant)? |  yes  |  |
 | medium | [FontVariant](#FontVariant)? |  yes  |  |
 | semiBold | [FontVariant](#FontVariant)? |  yes  |  |
 | bold | [FontVariant](#FontVariant)? |  yes  |  |

---


 
 
 #### [FontVariant](#FontVariant)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  | The name of the font variant |
 | file | String |  no  | The URL of the font file |

---


 
 
 #### [Config](#Config)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | current | String |  no  | The current configuration |
 | list | [[ThemeConfiguration](#ThemeConfiguration)] |  no  | A list of configurations |
 | globalSchema | [GlobalSchema](#GlobalSchema)? |  yes  |  |
 | preset | [Preset](#Preset)? |  yes  |  |

---


 
 
 #### [ThemeConfiguration](#ThemeConfiguration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  | The name of the configuration |
 | globalConfig | [GlobalConfig](#GlobalConfig)? |  yes  |  |
 | custom | [CustomConfig](#CustomConfig)? |  yes  |  |
 | page | [String]? |  yes  | An array of pages |

---


 
 
 #### [CustomConfig](#CustomConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | props | [CustomProps](#CustomProps)? |  yes  |  |

---


 
 
 #### [CustomProps](#CustomProps)

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


 
 
 #### [GlobalConfig](#GlobalConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | statics | [StaticConfig](#StaticConfig)? |  yes  |  |
 | auth | [AuthConfig](#AuthConfig)? |  yes  |  |
 | palette | [PaletteConfig](#PaletteConfig)? |  yes  |  |

---


 
 
 #### [PaletteConfig](#PaletteConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | generalSetting | [GeneralSetting](#GeneralSetting)? |  yes  |  |
 | advanceSetting | [AdvanceSetting](#AdvanceSetting)? |  yes  |  |

---


 
 
 #### [GeneralSetting](#GeneralSetting)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | theme | [ThemeSetting](#ThemeSetting)? |  yes  |  |
 | text | [TextSetting](#TextSetting)? |  yes  |  |
 | button | [ButtonSetting](#ButtonSetting)? |  yes  |  |
 | saleDiscount | [SaleDiscountSetting](#SaleDiscountSetting)? |  yes  |  |
 | header | [HeaderSetting](#HeaderSetting)? |  yes  |  |
 | footer | [FooterSetting](#FooterSetting)? |  yes  |  |

---


 
 
 #### [AdvanceSetting](#AdvanceSetting)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | overlayPopup | [OverlayPopupSetting](#OverlayPopupSetting)? |  yes  |  |
 | dividerStrokeHighlight | [DividerStrokeHighlightSetting](#DividerStrokeHighlightSetting)? |  yes  |  |
 | userAlerts | [UserAlertsSetting](#UserAlertsSetting)? |  yes  |  |

---


 
 
 #### [UserAlertsSetting](#UserAlertsSetting)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | successBackground | String? |  yes  | The success background color |
 | successText | String? |  yes  | The success text color |
 | errorBackground | String? |  yes  | The error background color |
 | errorText | String? |  yes  | The error text color |
 | infoBackground | String? |  yes  | The info background color |
 | infoText | String? |  yes  | The info text color |

---


 
 
 #### [ThemeSetting](#ThemeSetting)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pageBackground | String? |  yes  | The page background color |
 | themeAccent | String? |  yes  | The theme accent color |

---


 
 
 #### [TextSetting](#TextSetting)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | textHeading | String? |  yes  | The text heading color |
 | textBody | String? |  yes  | The text body color |
 | textLabel | String? |  yes  | The text label color |
 | textSecondary | String? |  yes  | The secondary text color |

---


 
 
 #### [ButtonSetting](#ButtonSetting)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | buttonPrimary | String? |  yes  | The primary button color |
 | buttonSecondary | String? |  yes  | The secondary button color |
 | buttonLink | String? |  yes  | The button link color |

---


 
 
 #### [SaleDiscountSetting](#SaleDiscountSetting)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | saleBadgeBackground | String? |  yes  | The sale badge background color |
 | saleBadgeText | String? |  yes  | The sale badge text color |
 | saleDiscountText | String? |  yes  | The sale discount text color |
 | saleTimer | String? |  yes  | The sale timer color |

---


 
 
 #### [HeaderSetting](#HeaderSetting)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | headerBackground | String? |  yes  | The header background color |
 | headerNav | String? |  yes  | The header navigation color |
 | headerIcon | String? |  yes  | The header icon color |

---


 
 
 #### [FooterSetting](#FooterSetting)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | footerBackground | String? |  yes  | The footer background color |
 | footerBottomBackground | String? |  yes  | The footer bottom background color |
 | footerHeadingText | String? |  yes  | The footer heading text color |
 | footerBodyText | String? |  yes  | The footer body text color |
 | footerIcon | String? |  yes  | The footer icon color |

---


 
 
 #### [OverlayPopupSetting](#OverlayPopupSetting)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dialogBackgroung | String? |  yes  | The dialog background color |
 | overlay | String? |  yes  | The overlay color |

---


 
 
 #### [DividerStrokeHighlightSetting](#DividerStrokeHighlightSetting)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dividerStrokes | String? |  yes  | The divider strokes color |
 | highlight | String? |  yes  | The highlight color |

---


 
 
 #### [StaticConfig](#StaticConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | props | [StaticProps](#StaticProps)? |  yes  |  |

---


 
 
 #### [StaticProps](#StaticProps)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | colors | [Colors](#Colors)? |  yes  |  |
 | auth | [AuthConfig](#AuthConfig)? |  yes  |  |

---


 
 
 #### [AuthConfig](#AuthConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | showHeaderAuth | Bool? |  yes  | Whether to show header authentication or not |
 | showFooterAuth | Bool? |  yes  | Whether to show footer authentication or not |

---


 
 
 #### [Colors](#Colors)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | primaryColor | String? |  yes  | The primary color |
 | secondaryColor | String? |  yes  | The secondary color |
 | accentColor | String? |  yes  | The accent color |
 | linkColor | String? |  yes  | The link color |
 | buttonSecondaryColor | String? |  yes  | The secondary button color |
 | bgColor | String? |  yes  | The background color |

---


 
 
 #### [Meta](#Meta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | payment | [ThemePayment](#ThemePayment)? |  yes  |  |
 | description | String? |  yes  | The description of the theme |
 | industry | [String]? |  yes  | An array of industries associated with the theme |
 | release | [Release](#Release)? |  yes  |  |
 | images | [Images](#Images)? |  yes  |  |
 | slug | String? |  yes  | The slug of the theme |
 | name | String? |  yes  | The name of the theme |

---


 
 
 #### [ThemePayment](#ThemePayment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isPaid | Bool? |  yes  | Whether the theme is paid or not |
 | amount | Double? |  yes  | The amount of the theme |

---


 
 
 #### [Release](#Release)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | notes | String? |  yes  | The release notes of the theme |
 | version | String? |  yes  | The version of the theme |

---


 
 
 #### [Images](#Images)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | desktop | String? |  yes  | The URL of the desktop image |
 | mobile | String? |  yes  | The URL of the mobile image |

---


 
 
 #### [Assets](#Assets)

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


 
 
 #### [GlobalSchema](#GlobalSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | props | [[Prop](#Prop)]? |  yes  |  |

---


 
 
 #### [Prop](#Prop)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  | The type of the property |
 | category | String? |  yes  | The category of the property |
 | id | String? |  yes  | The ID of the property |
 | label | String? |  yes  | The label of the property |
 | info | String? |  yes  | Additional information about the property |

---


 
 
 #### [Preset](#Preset)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pages | [[Page](#Page)]? |  yes  |  |

---


 
 
 #### [Page](#Page)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sections | [[Section](#Section)]? |  yes  |  |
 | value | String? |  yes  | The value of the page. |

---


 
 
 #### [SectionProps](#SectionProps)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | [TextProp](#TextProp)? |  yes  |  |
 | itemMargin | [TextProp](#TextProp)? |  yes  |  |
 | autoplay | [CheckboxProp](#CheckboxProp)? |  yes  |  |
 | slideInterval | [RangeProp](#RangeProp)? |  yes  |  |

---


 
 
 #### [SectionPreset](#SectionPreset)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | blocks | [[Block](#Block)]? |  yes  |  |

---


 
 
 #### [ImagePickerProp](#ImagePickerProp)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  | The type of the property. |
 | value | String? |  yes  | The value of the image picker property. |

---


 
 
 #### [UrlProp](#UrlProp)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  | The type of the property. |
 | value | String? |  yes  | The value of the URL property. |

---


 
 
 #### [BlockProps](#BlockProps)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | image | [ImagePickerProp](#ImagePickerProp)? |  yes  |  |
 | slideLink | [UrlProp](#UrlProp)? |  yes  |  |

---


 
 
 #### [TextProp](#TextProp)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String? |  yes  | The value of the text property. |
 | type | String? |  yes  | The type of the property. |

---


 
 
 #### [CheckboxProp](#CheckboxProp)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | Bool? |  yes  | The value of the checkbox property. |
 | type | String? |  yes  | The type of the property. |

---


 
 
 #### [RangeProp](#RangeProp)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | Int? |  yes  | The value of the range property. |
 | type | String? |  yes  | The type of the property. |

---


 
 
 #### [Section](#Section)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | blocks | [[Block](#Block)]? |  yes  |  |
 | predicate | [Predicate](#Predicate)? |  yes  |  |
 | name | String? |  yes  | The name of the section. |
 | props | [SectionProps](#SectionProps)? |  yes  |  |
 | preset | [SectionPreset](#SectionPreset)? |  yes  |  |

---


 
 
 #### [Block](#Block)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  | The type of the block. |
 | name | String? |  yes  | The name of the block. |
 | props | [BlockProps](#BlockProps)? |  yes  |  |

---


 
 
 #### [Predicate](#Predicate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | screen | [Screen](#Screen)? |  yes  |  |
 | user | [ThemeUserSchema](#ThemeUserSchema)? |  yes  |  |
 | route | [Route](#Route)? |  yes  |  |

---


 
 
 #### [Screen](#Screen)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mobile | Bool? |  yes  | True if the screen is a mobile device. |
 | desktop | Bool? |  yes  | True if the screen is a desktop device. |
 | tablet | Bool? |  yes  | True if the screen is a tablet device. |

---


 
 
 #### [ThemeUserSchema](#ThemeUserSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | authenticated | Bool? |  yes  | True if the user is authenticated. |
 | anonymous | Bool? |  yes  | True if the user is anonymous. |

---


 
 
 #### [Route](#Route)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | selected | String? |  yes  | The selected route. |
 | exactUrl | String? |  yes  | The exact URL of the route. |

---


 
 
 #### [UpdateThemeRequestBody](#UpdateThemeRequestBody)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | config | [Config](#Config)? |  yes  |  |
 | font | [Font](#Font)? |  yes  |  |

---



