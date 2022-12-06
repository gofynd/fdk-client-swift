



##### [Back to Platform docs](./README.md)

## Lead Methods
Handles communication between Administrator <-> Staff and Staff <-> Users
* [getTickets](#gettickets)
* [createTicket](#createticket)
* [getTickets](#gettickets)
* [getTicket](#getticket)
* [editTicket](#editticket)
* [getTicket](#getticket)
* [editTicket](#editticket)
* [createHistory](#createhistory)
* [getTicketHistory](#gettickethistory)
* [getFeedbacks](#getfeedbacks)
* [submitFeedback](#submitfeedback)
* [createHistory](#createhistory)
* [getTicketHistory](#gettickethistory)
* [getCustomForm](#getcustomform)
* [editCustomForm](#editcustomform)
* [getCustomForms](#getcustomforms)
* [createCustomForm](#createcustomform)
* [getTokenForVideoRoom](#gettokenforvideoroom)
* [getTokenForVideoRoom](#gettokenforvideoroom)
* [getVideoParticipants](#getvideoparticipants)
* [getVideoParticipants](#getvideoparticipants)
* [openVideoRoom](#openvideoroom)
* [closeVideoRoom](#closevideoroom)
* [getGeneralConfig](#getgeneralconfig)



## Methods with example and description


#### getTickets
Gets the list of company level tickets and/or ticket filters depending on query params




```swift
client.lead.getTickets(items: items, filters: filters, q: q, status: status, priority: priority, category: category, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| items | Bool? | no | Decides that the reponse will contain the list of tickets |   
| filters | Bool? | no | Decides that the reponse will contain the ticket filters |   
| q | String? | no | Search through ticket titles and description |   
| status | String? | no | Filter tickets on status |   
| priority | PriorityEnum? | no | Filter tickets on priority |   
| category | String? | no | Filter tickets on category |   
| pageNo | Int? | no | The page number to navigate through the given set of results. |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 12. |  



Gets the list of company level tickets and/or ticket filters

*Returned Response:*




[TicketList](#TicketList)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Without items</i></summary>

```json
{
  "value": {
    "filters": {
      "statuses": [
        {
          "display": "Pending",
          "color": "#eae22b",
          "key": "pending"
        },
        {
          "display": "In Progress",
          "color": "#ffa951",
          "key": "in_progress"
        },
        {
          "display": "Resolved",
          "color": "#20c3a6",
          "key": "resolved"
        },
        {
          "display": "Closed",
          "color": "#41434c",
          "key": "closed"
        }
      ],
      "priorities": [
        {
          "display": "Low",
          "color": "#fed766",
          "key": "low"
        },
        {
          "display": "Medium",
          "color": "#f37736",
          "key": "medium"
        },
        {
          "display": "High",
          "color": "#fe4a49",
          "key": "high"
        }
      ],
      "assignees": [],
      "categories": [
        {
          "form": {
            "login_required": false,
            "should_notify": false,
            "inputs": [
              {
                "type": "email",
                "showRegexInput": false,
                "enum": [],
                "regex": "\\S+@\\S+\\.\\S+",
                "display": "email",
                "required": true,
                "key": "email"
              }
            ],
            "available_assignees": [],
            "_id": "602e900a2042255c03cadaf0",
            "title": "service-test-satyen",
            "description": "testing form from service",
            "slug": "service-test-satyen",
            "header_image": "https://hdn-1.addsale.com/x0/support-ticket/files/free/original/KZL86aN5l-service-test-satyen.jpeg",
            "application_id": "000000000000000000000001",
            "created_on": {
              "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36",
              "platform": "web",
              "meta": {
                "browser": {
                  "name": "Chrome",
                  "version": "88.0.4324.150"
                },
                "os": {
                  "name": "macOS",
                  "version": "11.2.0"
                },
                "platform": {
                  "type": "desktop",
                  "vendor": "Apple"
                },
                "engine": {
                  "name": "Blink"
                }
              }
            },
            "created_by": "5f8147abbd1a0a870f61f1a6",
            "createdAt": "2021-02-18T16:04:26.495Z",
            "updatedAt": "2021-02-18T16:04:26.495Z",
            "__v": 0
          },
          "key": "service-test-satyen",
          "display": "service-test-satyen"
        }
      ]
    }
  }
}
```
</details>

<details>
<summary><i>&nbsp; With items</i></summary>

```json
{
  "value": {
    "docs": [
      {
        "_id": "602d2652ce284d0b008d5c97",
        "status": {
          "display": "Pending",
          "color": "#eae22b",
          "key": "pending"
        },
        "priority": {
          "display": "Medium",
          "color": "#f37736",
          "key": "medium"
        },
        "assigned_to": {
          "agent_id": "5e79e721768c6bf54b783146",
          "gender": "male",
          "accountType": "user",
          "active": true,
          "profilePicUrl": "https://d2co8r51m5ca2d.cloudfront.net/inapp_banners/default_profile_img.png",
          "hasOldPasswordHash": false,
          "_id": "5e79e721768c6bf54b783146",
          "emails": [
            {
              "active": true,
              "primary": true,
              "verified": true,
              "email": "nikhilmshchs@gmail.com"
            },
            {
              "active": true,
              "primary": false,
              "verified": true,
              "email": "nikhilmanapure@gofynd.com"
            },
            {
              "active": true,
              "primary": false,
              "verified": true,
              "email": "nikhilmanapure@fynd.com"
            },
            {
              "active": true,
              "primary": false,
              "verified": true,
              "email": "nikhilmanapure@uniket.store"
            }
          ],
          "phoneNumbers": [
            {
              "active": true,
              "primary": true,
              "verified": true,
              "countryCode": 91,
              "phone": "9890425946"
            }
          ],
          "firstName": "Nikhil",
          "lastName": "Manapure",
          "username": "nikhilmanapure_gofynd_com_29298",
          "createdAt": "2020-03-24T10:55:29.298Z",
          "updatedAt": "2020-05-12T07:46:41.816Z",
          "uid": "5567",
          "__v": 2
        },
        "tags": [
          "asdf444"
        ],
        "context": {
          "application_id": "000000000000000000000001",
          "company_id": "1"
        },
        "created_on": {
          "user_agent": "Fynd Platform/0.0.1 (com.fynd.platform; build:3; iOS 14.2.0) Alamofire/5.0.2",
          "platform": "web",
          "meta": {
            "browser": {
              "name": "Fynd Platform",
              "version": "0.0.1"
            }
          }
        },
        "source": "sales_channel",
        "content": {
          "title": "asdf444 Response",
          "description": "",
          "attachments": []
        },
        "response_id": "602d2652ce284dee3c8d5c96",
        "category": {
          "form": {
            "login_required": false,
            "should_notify": true,
            "inputs": [
              {
                "type": "text",
                "showRegexInput": false,
                "enum": [],
                "display": "asdf",
                "key": "asdf"
              },
              {
                "type": "mobile",
                "showRegexInput": false,
                "enum": [],
                "display": "mob num",
                "regex": "[0-9]{10}$",
                "key": "mob-num"
              }
            ],
            "available_assignees": [
              "5e79e721768c6bf54b783146"
            ],
            "_id": "60124e4a4d2bc363625e1bf4",
            "title": "asdf444",
            "description": "adf",
            "slug": "asdf444",
            "application_id": "000000000000000000000001",
            "created_on": {
              "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36",
              "platform": "web",
              "meta": {
                "browser": {
                  "name": "Chrome",
                  "version": "88.0.4324.96"
                },
                "os": {
                  "name": "macOS",
                  "version": "10.15.7",
                  "versionName": "Catalina"
                },
                "platform": {
                  "type": "desktop",
                  "vendor": "Apple"
                },
                "engine": {
                  "name": "Blink"
                }
              }
            },
            "created_by": "5e79e721768c6bf54b783146",
            "createdAt": "2021-01-28T05:40:26.271Z",
            "updatedAt": "2021-02-18T16:02:32.086Z",
            "__v": 0,
            "poll_for_assignment": {
              "duration": 20,
              "message": "We are looking for executive to connect you",
              "success_message": "Executive found",
              "failure_message": "All our executives are busy at the moment, We have accepted your request and someone will connect with you soon!"
            }
          },
          "key": "asdf444",
          "display": "asdf444"
        },
        "ticket_id": "472",
        "createdAt": "2021-02-17T14:21:06.774Z",
        "updatedAt": "2021-02-17T14:21:06.774Z",
        "__v": 0,
        "id": "602d2652ce284d0b008d5c97"
      }
    ],
    "total": 472,
    "limit": 10,
    "page": 1,
    "pages": 48,
    "filters": {
      "statuses": [
        {
          "display": "Pending",
          "color": "#eae22b",
          "key": "pending"
        },
        {
          "display": "In Progress",
          "color": "#ffa951",
          "key": "in_progress"
        },
        {
          "display": "Resolved",
          "color": "#20c3a6",
          "key": "resolved"
        },
        {
          "display": "Closed",
          "color": "#41434c",
          "key": "closed"
        }
      ],
      "priorities": [
        {
          "display": "Low",
          "color": "#fed766",
          "key": "low"
        },
        {
          "display": "Medium",
          "color": "#f37736",
          "key": "medium"
        },
        {
          "display": "High",
          "color": "#fe4a49",
          "key": "high"
        }
      ],
      "assignees": [],
      "categories": [
        {
          "form": {
            "login_required": false,
            "should_notify": false,
            "inputs": [
              {
                "type": "email",
                "showRegexInput": false,
                "enum": [],
                "regex": "\\S+@\\S+\\.\\S+",
                "display": "email",
                "required": true,
                "key": "email"
              }
            ],
            "available_assignees": [],
            "_id": "602e900a2042255c03cadaf0",
            "title": "service-test-satyen",
            "description": "testing form from service",
            "slug": "service-test-satyen",
            "header_image": "https://hdn-1.addsale.com/x0/support-ticket/files/free/original/KZL86aN5l-service-test-satyen.jpeg",
            "application_id": "000000000000000000000001",
            "created_on": {
              "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36",
              "platform": "web",
              "meta": {
                "browser": {
                  "name": "Chrome",
                  "version": "88.0.4324.150"
                },
                "os": {
                  "name": "macOS",
                  "version": "11.2.0"
                },
                "platform": {
                  "type": "desktop",
                  "vendor": "Apple"
                },
                "engine": {
                  "name": "Blink"
                }
              }
            },
            "created_by": "5f8147abbd1a0a870f61f1a6",
            "createdAt": "2021-02-18T16:04:26.495Z",
            "updatedAt": "2021-02-18T16:04:26.495Z",
            "__v": 0
          },
          "key": "service-test-satyen",
          "display": "service-test-satyen"
        }
      ]
    }
  }
}
```
</details>

</details>









---


#### createTicket
Creates a company level ticket




```swift
client.lead.createTicket(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | AddTicketPayload | yes | Request body |


Creates a company level ticket

*Returned Response:*




[Ticket](#Ticket)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Default</i></summary>

```json
{
  "value": {
    "context": {
      "company_id": "884"
    },
    "content": {
      "title": "SOme title Response",
      "description": "<b>Single lineeee</b>: asdf<br><b>Email</b>: asdf@asdf.com<br><b>dfsdf</b>: asdf<br>",
      "attachments": []
    },
    "status": {
      "display": "In Progress",
      "color": "#ffa951",
      "key": "in_progress"
    },
    "priority": {
      "display": "Medium",
      "color": "#f37736",
      "key": "medium"
    },
    "assigned_to": {
      "agent_id": "5d1363adf599d850df93175e",
      "gender": "male",
      "accountType": "user",
      "active": true,
      "profilePicUrl": "https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2136700473091190&height=400&width=400&ext=1554542761&hash=AeS6cuWIdjDdJJ-b",
      "hasOldPasswordHash": false,
      "_id": "5d1363adf599d850df93175e",
      "phoneNumbers": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "countryCode": 91,
          "phone": "9890425946"
        }
      ],
      "firstName": "Nikhil",
      "lastName": "Manapure",
      "emails": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "email": "nikhilmshchs@gmail.com"
        }
      ],
      "username": "nikhilmshchs_gmail_com_38425_20500281",
      "createdAt": "2019-01-01T17:22:38.528Z",
      "updatedAt": "2021-01-22T10:02:42.258Z",
      "uid": "20500281",
      "__v": 56
    },
    "tags": [
      "some-title"
    ],
    "_id": "6012f38557751ee8fc162cf7",
    "created_on": {
      "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36",
      "platform": "web",
      "meta": {
        "browser": {
          "name": "Chrome",
          "version": "88.0.4324.96"
        },
        "os": {
          "name": "macOS",
          "version": "10.15.7",
          "versionName": "Catalina"
        },
        "platform": {
          "type": "desktop",
          "vendor": "Apple"
        },
        "engine": {
          "name": "Blink"
        }
      }
    },
    "source": "sales_channel",
    "created_by": {
      "id": "5d1363adf599d850df93175e",
      "user": {
        "gender": "male",
        "accountType": "user",
        "active": true,
        "profilePicUrl": "https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2136700473091190&height=400&width=400&ext=1554542761&hash=AeS6cuWIdjDdJJ-b",
        "hasOldPasswordHash": false,
        "_id": "5d1363adf599d850df93175e",
        "phoneNumbers": [
          {
            "active": true,
            "primary": true,
            "verified": true,
            "countryCode": 91,
            "phone": "9890425946"
          }
        ],
        "firstName": "Nikhil",
        "lastName": "Manapure",
        "emails": [
          {
            "active": true,
            "primary": true,
            "verified": true,
            "email": "nikhilmshchs@gmail.com"
          }
        ],
        "username": "nikhilmshchs_gmail_com_38425_20500281",
        "createdAt": "2019-01-01T17:22:38.528Z",
        "updatedAt": "2021-01-22T10:02:42.258Z",
        "uid": "20500281",
        "__v": 56
      }
    },
    "response_id": "6012f38457751e0fb8162cf6",
    "category": {
      "form": {
        "login_required": false,
        "should_notify": false,
        "inputs": [
          {
            "required": false,
            "type": "text",
            "enum": [],
            "display": "Single lineeee",
            "key": "single-lineeee",
            "showRegexInput": false
          },
          {
            "required": false,
            "type": "email",
            "enum": [],
            "display": "Email",
            "regex": "\\S+@\\S+\\.\\S+",
            "key": "email",
            "showRegexInput": true
          },
          {
            "required": false,
            "type": "text",
            "enum": [],
            "display": "dfsdf",
            "key": "dfsdf",
            "showRegexInput": false
          }
        ],
        "available_assignees": [
          "5b9b98150df588546aaea6d2",
          "5c45d78395d7504f76c2cb37"
        ],
        "_id": "5fd72db3dc250f8decfc61b2",
        "title": "SOme title",
        "description": "SOme big description",
        "slug": "some-title",
        "application_id": "000000000000000000000003",
        "created_on": {
          "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36",
          "platform": "web",
          "meta": {
            "browser": {
              "name": "Chrome",
              "version": "87.0.4280.88"
            },
            "os": {
              "name": "macOS",
              "version": "10.15.6",
              "versionName": "Catalina"
            },
            "platform": {
              "type": "desktop",
              "vendor": "Apple"
            },
            "engine": {
              "name": "Blink"
            }
          }
        },
        "created_by": "5d1363adf599d850df93175e",
        "createdAt": "2020-12-14T09:17:39.953Z",
        "updatedAt": "2021-01-28T18:48:07.717Z",
        "__v": 0
      },
      "key": "some-title",
      "display": "SOme title"
    },
    "ticket_id": "43",
    "createdAt": "2021-01-28T17:25:25.013Z",
    "updatedAt": "2021-01-28T17:25:33.396Z",
    "__v": 0,
    "video_room_id": "6012f38557751ee8fc162cf7"
  }
}
```
</details>

</details>









---


#### getTickets
Gets the list of Application level Tickets and/or ticket filters depending on query params




```swift
client.application("<APPLICATION_ID>").lead.getTickets(items: items, filters: filters, q: q, status: status, priority: priority, category: category) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| items | Bool? | no | Decides that the reponse will contain the list of tickets |   
| filters | Bool? | no | Decides that the reponse will contain the ticket filters |   
| q | String? | no | Search through ticket titles and description |   
| status | String? | no | Filter tickets on status |   
| priority | PriorityEnum? | no | Filter tickets on priority |   
| category | String? | no | Filter tickets on category |  



Gets the list of Application level Tickets and/or ticket filters

*Returned Response:*




[TicketList](#TicketList)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Without items</i></summary>

```json
{
  "value": {
    "filters": {
      "statuses": [
        {
          "display": "Pending",
          "color": "#eae22b",
          "key": "pending"
        },
        {
          "display": "In Progress",
          "color": "#ffa951",
          "key": "in_progress"
        },
        {
          "display": "Resolved",
          "color": "#20c3a6",
          "key": "resolved"
        },
        {
          "display": "Closed",
          "color": "#41434c",
          "key": "closed"
        }
      ],
      "priorities": [
        {
          "display": "Low",
          "color": "#fed766",
          "key": "low"
        },
        {
          "display": "Medium",
          "color": "#f37736",
          "key": "medium"
        },
        {
          "display": "High",
          "color": "#fe4a49",
          "key": "high"
        }
      ],
      "assignees": [],
      "categories": [
        {
          "form": {
            "login_required": false,
            "should_notify": false,
            "inputs": [
              {
                "type": "email",
                "showRegexInput": false,
                "enum": [],
                "regex": "\\S+@\\S+\\.\\S+",
                "display": "email",
                "required": true,
                "key": "email"
              }
            ],
            "available_assignees": [],
            "_id": "602e900a2042255c03cadaf0",
            "title": "service-test-satyen",
            "description": "testing form from service",
            "slug": "service-test-satyen",
            "header_image": "https://hdn-1.addsale.com/x0/support-ticket/files/free/original/KZL86aN5l-service-test-satyen.jpeg",
            "application_id": "000000000000000000000001",
            "created_on": {
              "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36",
              "platform": "web",
              "meta": {
                "browser": {
                  "name": "Chrome",
                  "version": "88.0.4324.150"
                },
                "os": {
                  "name": "macOS",
                  "version": "11.2.0"
                },
                "platform": {
                  "type": "desktop",
                  "vendor": "Apple"
                },
                "engine": {
                  "name": "Blink"
                }
              }
            },
            "created_by": "5f8147abbd1a0a870f61f1a6",
            "createdAt": "2021-02-18T16:04:26.495Z",
            "updatedAt": "2021-02-18T16:04:26.495Z",
            "__v": 0
          },
          "key": "service-test-satyen",
          "display": "service-test-satyen"
        }
      ]
    }
  }
}
```
</details>

<details>
<summary><i>&nbsp; With items</i></summary>

```json
{
  "value": {
    "docs": [
      {
        "_id": "602d2652ce284d0b008d5c97",
        "status": {
          "display": "Pending",
          "color": "#eae22b",
          "key": "pending"
        },
        "priority": {
          "display": "Medium",
          "color": "#f37736",
          "key": "medium"
        },
        "assigned_to": {
          "agent_id": "5e79e721768c6bf54b783146",
          "gender": "male",
          "accountType": "user",
          "active": true,
          "profilePicUrl": "https://d2co8r51m5ca2d.cloudfront.net/inapp_banners/default_profile_img.png",
          "hasOldPasswordHash": false,
          "_id": "5e79e721768c6bf54b783146",
          "emails": [
            {
              "active": true,
              "primary": true,
              "verified": true,
              "email": "nikhilmshchs@gmail.com"
            },
            {
              "active": true,
              "primary": false,
              "verified": true,
              "email": "nikhilmanapure@gofynd.com"
            },
            {
              "active": true,
              "primary": false,
              "verified": true,
              "email": "nikhilmanapure@fynd.com"
            },
            {
              "active": true,
              "primary": false,
              "verified": true,
              "email": "nikhilmanapure@uniket.store"
            }
          ],
          "phoneNumbers": [
            {
              "active": true,
              "primary": true,
              "verified": true,
              "countryCode": 91,
              "phone": "9890425946"
            }
          ],
          "firstName": "Nikhil",
          "lastName": "Manapure",
          "username": "nikhilmanapure_gofynd_com_29298",
          "createdAt": "2020-03-24T10:55:29.298Z",
          "updatedAt": "2020-05-12T07:46:41.816Z",
          "uid": "5567",
          "__v": 2
        },
        "tags": [
          "asdf444"
        ],
        "context": {
          "application_id": "000000000000000000000001",
          "company_id": "1"
        },
        "created_on": {
          "user_agent": "Fynd Platform/0.0.1 (com.fynd.platform; build:3; iOS 14.2.0) Alamofire/5.0.2",
          "platform": "web",
          "meta": {
            "browser": {
              "name": "Fynd Platform",
              "version": "0.0.1"
            }
          }
        },
        "source": "sales_channel",
        "content": {
          "title": "asdf444 Response",
          "description": "",
          "attachments": []
        },
        "response_id": "602d2652ce284dee3c8d5c96",
        "category": {
          "form": {
            "login_required": false,
            "should_notify": true,
            "inputs": [
              {
                "type": "text",
                "showRegexInput": false,
                "enum": [],
                "display": "asdf",
                "key": "asdf"
              },
              {
                "type": "mobile",
                "showRegexInput": false,
                "enum": [],
                "display": "mob num",
                "regex": "[0-9]{10}$",
                "key": "mob-num"
              }
            ],
            "available_assignees": [
              "5e79e721768c6bf54b783146"
            ],
            "_id": "60124e4a4d2bc363625e1bf4",
            "title": "asdf444",
            "description": "adf",
            "slug": "asdf444",
            "application_id": "000000000000000000000001",
            "created_on": {
              "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36",
              "platform": "web",
              "meta": {
                "browser": {
                  "name": "Chrome",
                  "version": "88.0.4324.96"
                },
                "os": {
                  "name": "macOS",
                  "version": "10.15.7",
                  "versionName": "Catalina"
                },
                "platform": {
                  "type": "desktop",
                  "vendor": "Apple"
                },
                "engine": {
                  "name": "Blink"
                }
              }
            },
            "created_by": "5e79e721768c6bf54b783146",
            "createdAt": "2021-01-28T05:40:26.271Z",
            "updatedAt": "2021-02-18T16:02:32.086Z",
            "__v": 0,
            "poll_for_assignment": {
              "duration": 20,
              "message": "We are looking for executive to connect you",
              "success_message": "Executive found",
              "failure_message": "All our executives are busy at the moment, We have accepted your request and someone will connect with you soon!"
            }
          },
          "key": "asdf444",
          "display": "asdf444"
        },
        "ticket_id": "472",
        "createdAt": "2021-02-17T14:21:06.774Z",
        "updatedAt": "2021-02-17T14:21:06.774Z",
        "__v": 0,
        "id": "602d2652ce284d0b008d5c97"
      }
    ],
    "total": 472,
    "limit": 10,
    "page": 1,
    "pages": 48,
    "filters": {
      "statuses": [
        {
          "display": "Pending",
          "color": "#eae22b",
          "key": "pending"
        },
        {
          "display": "In Progress",
          "color": "#ffa951",
          "key": "in_progress"
        },
        {
          "display": "Resolved",
          "color": "#20c3a6",
          "key": "resolved"
        },
        {
          "display": "Closed",
          "color": "#41434c",
          "key": "closed"
        }
      ],
      "priorities": [
        {
          "display": "Low",
          "color": "#fed766",
          "key": "low"
        },
        {
          "display": "Medium",
          "color": "#f37736",
          "key": "medium"
        },
        {
          "display": "High",
          "color": "#fe4a49",
          "key": "high"
        }
      ],
      "assignees": [],
      "categories": [
        {
          "form": {
            "login_required": false,
            "should_notify": false,
            "inputs": [
              {
                "type": "email",
                "showRegexInput": false,
                "enum": [],
                "regex": "\\S+@\\S+\\.\\S+",
                "display": "email",
                "required": true,
                "key": "email"
              }
            ],
            "available_assignees": [],
            "_id": "602e900a2042255c03cadaf0",
            "title": "service-test-satyen",
            "description": "testing form from service",
            "slug": "service-test-satyen",
            "header_image": "https://hdn-1.addsale.com/x0/support-ticket/files/free/original/KZL86aN5l-service-test-satyen.jpeg",
            "application_id": "000000000000000000000001",
            "created_on": {
              "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36",
              "platform": "web",
              "meta": {
                "browser": {
                  "name": "Chrome",
                  "version": "88.0.4324.150"
                },
                "os": {
                  "name": "macOS",
                  "version": "11.2.0"
                },
                "platform": {
                  "type": "desktop",
                  "vendor": "Apple"
                },
                "engine": {
                  "name": "Blink"
                }
              }
            },
            "created_by": "5f8147abbd1a0a870f61f1a6",
            "createdAt": "2021-02-18T16:04:26.495Z",
            "updatedAt": "2021-02-18T16:04:26.495Z",
            "__v": 0
          },
          "key": "service-test-satyen",
          "display": "service-test-satyen"
        }
      ]
    }
  }
}
```
</details>

</details>









---


#### getTicket
Retreives ticket details of a company level ticket with ticket ID




```swift
client.lead.getTicket(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Tiket ID of the ticket to be fetched |  



Retreives ticket details of a company level ticket

*Returned Response:*




[Ticket](#Ticket)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Default</i></summary>

```json
{
  "value": {
    "context": {
      "company_id": "1"
    },
    "content": {
      "title": "SOme title Response",
      "description": "<b>Single lineeee</b>: asdf<br><b>Email</b>: asdf@asdf.com<br><b>dfsdf</b>: asdf<br>",
      "attachments": []
    },
    "status": {
      "display": "In Progress",
      "color": "#ffa951",
      "key": "in_progress"
    },
    "priority": {
      "display": "Medium",
      "color": "#f37736",
      "key": "medium"
    },
    "assigned_to": {
      "agent_id": "5d1363adf599d850df93175e",
      "gender": "male",
      "accountType": "user",
      "active": true,
      "profilePicUrl": "https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2136700473091190&height=400&width=400&ext=1554542761&hash=AeS6cuWIdjDdJJ-b",
      "hasOldPasswordHash": false,
      "_id": "5d1363adf599d850df93175e",
      "phoneNumbers": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "countryCode": 91,
          "phone": "9890425946"
        }
      ],
      "firstName": "Nikhil",
      "lastName": "Manapure",
      "emails": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "email": "nikhilmshchs@gmail.com"
        }
      ],
      "username": "nikhilmshchs_gmail_com_38425_20500281",
      "createdAt": "2019-01-01T17:22:38.528Z",
      "updatedAt": "2021-01-22T10:02:42.258Z",
      "uid": "20500281",
      "__v": 56
    },
    "tags": [
      "some-title"
    ],
    "_id": "6012f38557751ee8fc162cf7",
    "created_on": {
      "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36",
      "platform": "web",
      "meta": {
        "browser": {
          "name": "Chrome",
          "version": "88.0.4324.96"
        },
        "os": {
          "name": "macOS",
          "version": "10.15.7",
          "versionName": "Catalina"
        },
        "platform": {
          "type": "desktop",
          "vendor": "Apple"
        },
        "engine": {
          "name": "Blink"
        }
      }
    },
    "source": "sales_channel",
    "created_by": {
      "id": "5d1363adf599d850df93175e",
      "user": {
        "gender": "male",
        "accountType": "user",
        "active": true,
        "profilePicUrl": "https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2136700473091190&height=400&width=400&ext=1554542761&hash=AeS6cuWIdjDdJJ-b",
        "hasOldPasswordHash": false,
        "_id": "5d1363adf599d850df93175e",
        "phoneNumbers": [
          {
            "active": true,
            "primary": true,
            "verified": true,
            "countryCode": 91,
            "phone": "9890425946"
          }
        ],
        "firstName": "Nikhil",
        "lastName": "Manapure",
        "emails": [
          {
            "active": true,
            "primary": true,
            "verified": true,
            "email": "nikhilmshchs@gmail.com"
          }
        ],
        "username": "nikhilmshchs_gmail_com_38425_20500281",
        "createdAt": "2019-01-01T17:22:38.528Z",
        "updatedAt": "2021-01-22T10:02:42.258Z",
        "uid": "20500281",
        "__v": 56
      }
    },
    "response_id": "6012f38457751e0fb8162cf6",
    "category": {
      "form": {
        "login_required": false,
        "should_notify": false,
        "inputs": [
          {
            "required": false,
            "type": "text",
            "enum": [],
            "display": "Single lineeee",
            "key": "single-lineeee",
            "showRegexInput": false
          },
          {
            "required": false,
            "type": "email",
            "enum": [],
            "display": "Email",
            "regex": "\\S+@\\S+\\.\\S+",
            "key": "email",
            "showRegexInput": true
          },
          {
            "required": false,
            "type": "text",
            "enum": [],
            "display": "dfsdf",
            "key": "dfsdf",
            "showRegexInput": false
          }
        ],
        "available_assignees": [
          "5b9b98150df588546aaea6d2",
          "5c45d78395d7504f76c2cb37"
        ],
        "_id": "5fd72db3dc250f8decfc61b2",
        "title": "SOme title",
        "description": "SOme big description",
        "slug": "some-title",
        "application_id": "000000000000000000000003",
        "created_on": {
          "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36",
          "platform": "web",
          "meta": {
            "browser": {
              "name": "Chrome",
              "version": "87.0.4280.88"
            },
            "os": {
              "name": "macOS",
              "version": "10.15.6",
              "versionName": "Catalina"
            },
            "platform": {
              "type": "desktop",
              "vendor": "Apple"
            },
            "engine": {
              "name": "Blink"
            }
          }
        },
        "created_by": "5d1363adf599d850df93175e",
        "createdAt": "2020-12-14T09:17:39.953Z",
        "updatedAt": "2021-01-28T18:48:07.717Z",
        "__v": 0
      },
      "key": "some-title",
      "display": "SOme title"
    },
    "ticket_id": "43",
    "createdAt": "2021-01-28T17:25:25.013Z",
    "updatedAt": "2021-01-28T17:25:33.396Z",
    "__v": 0,
    "video_room_id": "6012f38557751ee8fc162cf7"
  }
}
```
</details>

</details>









---


#### editTicket
Edits ticket details of a company level ticket




```swift
client.lead.editTicket(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Ticket ID of ticket to be edited |  
| body | EditTicketPayload | yes | Request body |


Edits ticket details of a company level ticket such as status, priority, category, tags, attachments, assigne & ticket content changes

*Returned Response:*




[Ticket](#Ticket)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Default</i></summary>

```json
{
  "value": {
    "context": {
      "company_id": "1"
    },
    "content": {
      "title": "SOme title Response",
      "description": "<b>Single lineeee</b>: asdf<br><b>Email</b>: asdf@asdf.com<br><b>dfsdf</b>: asdf<br>",
      "attachments": []
    },
    "status": {
      "display": "In Progress",
      "color": "#ffa951",
      "key": "in_progress"
    },
    "priority": {
      "display": "Medium",
      "color": "#f37736",
      "key": "medium"
    },
    "assigned_to": {
      "agent_id": "5d1363adf599d850df93175e",
      "gender": "male",
      "accountType": "user",
      "active": true,
      "profilePicUrl": "https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2136700473091190&height=400&width=400&ext=1554542761&hash=AeS6cuWIdjDdJJ-b",
      "hasOldPasswordHash": false,
      "_id": "5d1363adf599d850df93175e",
      "phoneNumbers": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "countryCode": 91,
          "phone": "9890425946"
        }
      ],
      "firstName": "Nikhil",
      "lastName": "Manapure",
      "emails": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "email": "nikhilmshchs@gmail.com"
        }
      ],
      "username": "nikhilmshchs_gmail_com_38425_20500281",
      "createdAt": "2019-01-01T17:22:38.528Z",
      "updatedAt": "2021-01-22T10:02:42.258Z",
      "uid": "20500281",
      "__v": 56
    },
    "tags": [
      "some-title"
    ],
    "_id": "6012f38557751ee8fc162cf7",
    "created_on": {
      "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36",
      "platform": "web",
      "meta": {
        "browser": {
          "name": "Chrome",
          "version": "88.0.4324.96"
        },
        "os": {
          "name": "macOS",
          "version": "10.15.7",
          "versionName": "Catalina"
        },
        "platform": {
          "type": "desktop",
          "vendor": "Apple"
        },
        "engine": {
          "name": "Blink"
        }
      }
    },
    "source": "sales_channel",
    "created_by": {
      "id": "5d1363adf599d850df93175e",
      "user": {
        "gender": "male",
        "accountType": "user",
        "active": true,
        "profilePicUrl": "https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2136700473091190&height=400&width=400&ext=1554542761&hash=AeS6cuWIdjDdJJ-b",
        "hasOldPasswordHash": false,
        "_id": "5d1363adf599d850df93175e",
        "phoneNumbers": [
          {
            "active": true,
            "primary": true,
            "verified": true,
            "countryCode": 91,
            "phone": "9890425946"
          }
        ],
        "firstName": "Nikhil",
        "lastName": "Manapure",
        "emails": [
          {
            "active": true,
            "primary": true,
            "verified": true,
            "email": "nikhilmshchs@gmail.com"
          }
        ],
        "username": "nikhilmshchs_gmail_com_38425_20500281",
        "createdAt": "2019-01-01T17:22:38.528Z",
        "updatedAt": "2021-01-22T10:02:42.258Z",
        "uid": "20500281",
        "__v": 56
      }
    },
    "response_id": "6012f38457751e0fb8162cf6",
    "category": {
      "form": {
        "login_required": false,
        "should_notify": false,
        "inputs": [
          {
            "required": false,
            "type": "text",
            "enum": [],
            "display": "Single lineeee",
            "key": "single-lineeee",
            "showRegexInput": false
          },
          {
            "required": false,
            "type": "email",
            "enum": [],
            "display": "Email",
            "regex": "\\S+@\\S+\\.\\S+",
            "key": "email",
            "showRegexInput": true
          },
          {
            "required": false,
            "type": "text",
            "enum": [],
            "display": "dfsdf",
            "key": "dfsdf",
            "showRegexInput": false
          }
        ],
        "available_assignees": [
          "5b9b98150df588546aaea6d2",
          "5c45d78395d7504f76c2cb37"
        ],
        "_id": "5fd72db3dc250f8decfc61b2",
        "title": "SOme title",
        "description": "SOme big description",
        "slug": "some-title",
        "application_id": "000000000000000000000003",
        "created_on": {
          "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36",
          "platform": "web",
          "meta": {
            "browser": {
              "name": "Chrome",
              "version": "87.0.4280.88"
            },
            "os": {
              "name": "macOS",
              "version": "10.15.6",
              "versionName": "Catalina"
            },
            "platform": {
              "type": "desktop",
              "vendor": "Apple"
            },
            "engine": {
              "name": "Blink"
            }
          }
        },
        "created_by": "5d1363adf599d850df93175e",
        "createdAt": "2020-12-14T09:17:39.953Z",
        "updatedAt": "2021-01-28T18:48:07.717Z",
        "__v": 0
      },
      "key": "some-title",
      "display": "SOme title"
    },
    "ticket_id": "43",
    "createdAt": "2021-01-28T17:25:25.013Z",
    "updatedAt": "2021-01-28T17:25:33.396Z",
    "__v": 0,
    "video_room_id": "6012f38557751ee8fc162cf7"
  }
}
```
</details>

</details>









---


#### getTicket
Retreives ticket details of a application level ticket




```swift
client.application("<APPLICATION_ID>").lead.getTicket(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Tiket ID of the ticket to be fetched |  



Retreives ticket details of a application level ticket with ticket ID

*Returned Response:*




[Ticket](#Ticket)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Default</i></summary>

```json
{
  "value": {
    "context": {
      "application_id": "000000000000000000000003",
      "company_id": "884"
    },
    "content": {
      "title": "SOme title Response",
      "description": "<b>Single lineeee</b>: asdf<br><b>Email</b>: asdf@asdf.com<br><b>dfsdf</b>: asdf<br>",
      "attachments": []
    },
    "status": {
      "display": "In Progress",
      "color": "#ffa951",
      "key": "in_progress"
    },
    "priority": {
      "display": "Medium",
      "color": "#f37736",
      "key": "medium"
    },
    "assigned_to": {
      "agent_id": "5d1363adf599d850df93175e",
      "gender": "male",
      "accountType": "user",
      "active": true,
      "profilePicUrl": "https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2136700473091190&height=400&width=400&ext=1554542761&hash=AeS6cuWIdjDdJJ-b",
      "hasOldPasswordHash": false,
      "_id": "5d1363adf599d850df93175e",
      "phoneNumbers": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "countryCode": 91,
          "phone": "9890425946"
        }
      ],
      "firstName": "Nikhil",
      "lastName": "Manapure",
      "emails": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "email": "nikhilmshchs@gmail.com"
        }
      ],
      "username": "nikhilmshchs_gmail_com_38425_20500281",
      "createdAt": "2019-01-01T17:22:38.528Z",
      "updatedAt": "2021-01-22T10:02:42.258Z",
      "uid": "20500281",
      "__v": 56
    },
    "tags": [
      "some-title"
    ],
    "_id": "6012f38557751ee8fc162cf7",
    "created_on": {
      "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36",
      "platform": "web",
      "meta": {
        "browser": {
          "name": "Chrome",
          "version": "88.0.4324.96"
        },
        "os": {
          "name": "macOS",
          "version": "10.15.7",
          "versionName": "Catalina"
        },
        "platform": {
          "type": "desktop",
          "vendor": "Apple"
        },
        "engine": {
          "name": "Blink"
        }
      }
    },
    "source": "sales_channel",
    "created_by": {
      "id": "5d1363adf599d850df93175e",
      "user": {
        "gender": "male",
        "accountType": "user",
        "active": true,
        "profilePicUrl": "https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2136700473091190&height=400&width=400&ext=1554542761&hash=AeS6cuWIdjDdJJ-b",
        "hasOldPasswordHash": false,
        "_id": "5d1363adf599d850df93175e",
        "phoneNumbers": [
          {
            "active": true,
            "primary": true,
            "verified": true,
            "countryCode": 91,
            "phone": "9890425946"
          }
        ],
        "firstName": "Nikhil",
        "lastName": "Manapure",
        "emails": [
          {
            "active": true,
            "primary": true,
            "verified": true,
            "email": "nikhilmshchs@gmail.com"
          }
        ],
        "username": "nikhilmshchs_gmail_com_38425_20500281",
        "createdAt": "2019-01-01T17:22:38.528Z",
        "updatedAt": "2021-01-22T10:02:42.258Z",
        "uid": "20500281",
        "__v": 56
      }
    },
    "response_id": "6012f38457751e0fb8162cf6",
    "category": {
      "form": {
        "login_required": false,
        "should_notify": false,
        "inputs": [
          {
            "required": false,
            "type": "text",
            "enum": [],
            "display": "Single lineeee",
            "key": "single-lineeee",
            "showRegexInput": false
          },
          {
            "required": false,
            "type": "email",
            "enum": [],
            "display": "Email",
            "regex": "\\S+@\\S+\\.\\S+",
            "key": "email",
            "showRegexInput": true
          },
          {
            "required": false,
            "type": "text",
            "enum": [],
            "display": "dfsdf",
            "key": "dfsdf",
            "showRegexInput": false
          }
        ],
        "available_assignees": [
          "5b9b98150df588546aaea6d2",
          "5c45d78395d7504f76c2cb37"
        ],
        "_id": "5fd72db3dc250f8decfc61b2",
        "title": "SOme title",
        "description": "SOme big description",
        "slug": "some-title",
        "application_id": "000000000000000000000003",
        "created_on": {
          "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36",
          "platform": "web",
          "meta": {
            "browser": {
              "name": "Chrome",
              "version": "87.0.4280.88"
            },
            "os": {
              "name": "macOS",
              "version": "10.15.6",
              "versionName": "Catalina"
            },
            "platform": {
              "type": "desktop",
              "vendor": "Apple"
            },
            "engine": {
              "name": "Blink"
            }
          }
        },
        "created_by": "5d1363adf599d850df93175e",
        "createdAt": "2020-12-14T09:17:39.953Z",
        "updatedAt": "2021-01-28T18:48:07.717Z",
        "__v": 0
      },
      "key": "some-title",
      "display": "SOme title"
    },
    "ticket_id": "43",
    "createdAt": "2021-01-28T17:25:25.013Z",
    "updatedAt": "2021-01-28T17:25:33.396Z",
    "__v": 0,
    "video_room_id": "6012f38557751ee8fc162cf7"
  }
}
```
</details>

</details>









---


#### editTicket
Edits ticket details of a application level ticket




```swift
client.application("<APPLICATION_ID>").lead.editTicket(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Ticket ID of ticket to be edited |  
| body | EditTicketPayload | yes | Request body |


Edits ticket details of a application level ticket such as status, priority, category, tags, attachments, assigne & ticket content changes

*Returned Response:*




[Ticket](#Ticket)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Default</i></summary>

```json
{
  "value": {
    "context": {
      "application_id": "000000000000000000000003",
      "company_id": "884"
    },
    "content": {
      "title": "SOme title Response",
      "description": "<b>Single lineeee</b>: asdf<br><b>Email</b>: asdf@asdf.com<br><b>dfsdf</b>: asdf<br>",
      "attachments": []
    },
    "status": {
      "display": "In Progress",
      "color": "#ffa951",
      "key": "in_progress"
    },
    "priority": {
      "display": "Medium",
      "color": "#f37736",
      "key": "medium"
    },
    "assigned_to": {
      "agent_id": "5d1363adf599d850df93175e",
      "gender": "male",
      "accountType": "user",
      "active": true,
      "profilePicUrl": "https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2136700473091190&height=400&width=400&ext=1554542761&hash=AeS6cuWIdjDdJJ-b",
      "hasOldPasswordHash": false,
      "_id": "5d1363adf599d850df93175e",
      "phoneNumbers": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "countryCode": 91,
          "phone": "9890425946"
        }
      ],
      "firstName": "Nikhil",
      "lastName": "Manapure",
      "emails": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "email": "nikhilmshchs@gmail.com"
        }
      ],
      "username": "nikhilmshchs_gmail_com_38425_20500281",
      "createdAt": "2019-01-01T17:22:38.528Z",
      "updatedAt": "2021-01-22T10:02:42.258Z",
      "uid": "20500281",
      "__v": 56
    },
    "tags": [
      "some-title"
    ],
    "_id": "6012f38557751ee8fc162cf7",
    "created_on": {
      "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36",
      "platform": "web",
      "meta": {
        "browser": {
          "name": "Chrome",
          "version": "88.0.4324.96"
        },
        "os": {
          "name": "macOS",
          "version": "10.15.7",
          "versionName": "Catalina"
        },
        "platform": {
          "type": "desktop",
          "vendor": "Apple"
        },
        "engine": {
          "name": "Blink"
        }
      }
    },
    "source": "sales_channel",
    "created_by": {
      "id": "5d1363adf599d850df93175e",
      "user": {
        "gender": "male",
        "accountType": "user",
        "active": true,
        "profilePicUrl": "https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2136700473091190&height=400&width=400&ext=1554542761&hash=AeS6cuWIdjDdJJ-b",
        "hasOldPasswordHash": false,
        "_id": "5d1363adf599d850df93175e",
        "phoneNumbers": [
          {
            "active": true,
            "primary": true,
            "verified": true,
            "countryCode": 91,
            "phone": "9890425946"
          }
        ],
        "firstName": "Nikhil",
        "lastName": "Manapure",
        "emails": [
          {
            "active": true,
            "primary": true,
            "verified": true,
            "email": "nikhilmshchs@gmail.com"
          }
        ],
        "username": "nikhilmshchs_gmail_com_38425_20500281",
        "createdAt": "2019-01-01T17:22:38.528Z",
        "updatedAt": "2021-01-22T10:02:42.258Z",
        "uid": "20500281",
        "__v": 56
      }
    },
    "response_id": "6012f38457751e0fb8162cf6",
    "category": {
      "form": {
        "login_required": false,
        "should_notify": false,
        "inputs": [
          {
            "required": false,
            "type": "text",
            "enum": [],
            "display": "Single lineeee",
            "key": "single-lineeee",
            "showRegexInput": false
          },
          {
            "required": false,
            "type": "email",
            "enum": [],
            "display": "Email",
            "regex": "\\S+@\\S+\\.\\S+",
            "key": "email",
            "showRegexInput": true
          },
          {
            "required": false,
            "type": "text",
            "enum": [],
            "display": "dfsdf",
            "key": "dfsdf",
            "showRegexInput": false
          }
        ],
        "available_assignees": [
          "5b9b98150df588546aaea6d2",
          "5c45d78395d7504f76c2cb37"
        ],
        "_id": "5fd72db3dc250f8decfc61b2",
        "title": "SOme title",
        "description": "SOme big description",
        "slug": "some-title",
        "application_id": "000000000000000000000003",
        "created_on": {
          "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36",
          "platform": "web",
          "meta": {
            "browser": {
              "name": "Chrome",
              "version": "87.0.4280.88"
            },
            "os": {
              "name": "macOS",
              "version": "10.15.6",
              "versionName": "Catalina"
            },
            "platform": {
              "type": "desktop",
              "vendor": "Apple"
            },
            "engine": {
              "name": "Blink"
            }
          }
        },
        "created_by": "5d1363adf599d850df93175e",
        "createdAt": "2020-12-14T09:17:39.953Z",
        "updatedAt": "2021-01-28T18:48:07.717Z",
        "__v": 0
      },
      "key": "some-title",
      "display": "SOme title"
    },
    "ticket_id": "43",
    "createdAt": "2021-01-28T17:25:25.013Z",
    "updatedAt": "2021-01-28T17:25:33.396Z",
    "__v": 0,
    "video_room_id": "6012f38557751ee8fc162cf7"
  }
}
```
</details>

</details>









---


#### createHistory
Create history for specific company level ticket




```swift
client.lead.createHistory(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Ticket ID for which history is created |  
| body | TicketHistoryPayload | yes | Request body |


Create history for specific company level ticket, this history is seen on ticket detail page, this can be comment, log or rating.

*Returned Response:*




[TicketHistory](#TicketHistory)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Default</i></summary>

```json
{
  "value": {
    "_id": "601a9d52c26687d086c499ef",
    "ticket_id": "43",
    "type": "comment",
    "value": {
      "text": "d",
      "media": []
    },
    "created_on": {
      "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36",
      "platform": "web",
      "meta": {
        "browser": {
          "name": "Chrome",
          "version": "88.0.4324.96"
        },
        "os": {
          "name": "macOS",
          "version": "10.15.7",
          "versionName": "Catalina"
        },
        "platform": {
          "type": "desktop",
          "vendor": "Apple"
        },
        "engine": {
          "name": "Blink"
        }
      }
    },
    "created_by": "5d1363adf599d850df93175e",
    "createdAt": "2021-02-03T12:55:46.808Z",
    "updatedAt": "2021-02-03T12:55:46.808Z",
    "__v": 0
  }
}
```
</details>

</details>









---


#### getTicketHistory
Gets history list for specific company level ticket




```swift
client.lead.getTicketHistory(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Ticket ID for which history is to be fetched |  



Gets history list for specific company level ticket, this history is seen on ticket detail page, this can be comment, log or rating.

*Returned Response:*




[TicketHistoryList](#TicketHistoryList)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Default</i></summary>

```json
{
  "value": {
    "docs": [
      {
        "_id": "602e5384204225eed5cadae7",
        "ticket_id": "41",
        "type": "comment",
        "value": {
          "text": "hello service",
          "media": []
        },
        "created_on": {
          "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36",
          "platform": "web",
          "meta": {
            "browser": {
              "name": "Chrome",
              "version": "88.0.4324.150"
            },
            "os": {
              "name": "macOS",
              "version": "11.2.0"
            },
            "platform": {
              "type": "desktop",
              "vendor": "Apple"
            },
            "engine": {
              "name": "Blink"
            }
          }
        },
        "created_by": {
          "gender": "male",
          "accountType": "user",
          "active": true,
          "profilePicUrl": "https://hdn-1.fynd.com/company/884/applications/000000000000000000000001/theme/pictures/free/original/default-profile_nxhzui.png",
          "hasOldPasswordHash": false,
          "_id": "5f8147abbd1a0a870f61f1a6",
          "phoneNumbers": [
            {
              "active": true,
              "primary": true,
              "verified": true,
              "phone": "8412805281",
              "countryCode": 91
            }
          ],
          "firstName": "Satyen",
          "lastName": "Maurya",
          "emails": [
            {
              "active": true,
              "primary": true,
              "verified": true,
              "email": "satyenmaurya95@gmail.com"
            }
          ],
          "username": "satyenmaurya95_gmail_com_11118",
          "createdAt": "2020-10-10T05:33:31.119Z",
          "updatedAt": "2020-10-10T05:33:31.119Z",
          "uid": "5678",
          "__v": 0
        },
        "createdAt": "2021-02-18T11:46:12.522Z",
        "updatedAt": "2021-02-18T11:46:12.522Z",
        "__v": 0,
        "id": "602e5384204225eed5cadae7"
      },
      {
        "_id": "60372aa78a046d4d79c46e15",
        "ticket_id": "41",
        "type": "diff",
        "value": {
          "status": [
            "pending",
            "in_progress"
          ]
        },
        "created_by": {
          "gender": "male",
          "accountType": "user",
          "active": true,
          "profilePicUrl": "https://d2co8r51m5ca2d.cloudfront.net/inapp_banners/default_profile_img.png",
          "hasOldPasswordHash": false,
          "_id": "5e79e721768c6bf54b783146",
          "emails": [
            {
              "active": true,
              "primary": true,
              "verified": true,
              "email": "nikhilmshchs@gmail.com"
            },
            {
              "active": true,
              "primary": false,
              "verified": true,
              "email": "nikhilmanapure@gofynd.com"
            },
            {
              "active": true,
              "primary": false,
              "verified": true,
              "email": "nikhilmanapure@fynd.com"
            },
            {
              "active": true,
              "primary": false,
              "verified": true,
              "email": "nikhilmanapure@uniket.store"
            }
          ],
          "phoneNumbers": [
            {
              "active": true,
              "primary": true,
              "verified": true,
              "countryCode": 91,
              "phone": "9890425946"
            }
          ],
          "firstName": "Nikhil",
          "lastName": "Manapure",
          "username": "nikhilmanapure_gofynd_com_29298",
          "createdAt": "2020-03-24T10:55:29.298Z",
          "updatedAt": "2020-05-12T07:46:41.816Z",
          "uid": "5567",
          "__v": 2
        },
        "createdAt": "2021-02-25T04:42:15.225Z",
        "updatedAt": "2021-02-25T04:42:15.225Z",
        "__v": 0,
        "id": "60372aa78a046d4d79c46e15"
      }
    ],
    "total": 2,
    "limit": 100,
    "page": 1,
    "pages": 1
  }
}
```
</details>

</details>









---


#### getFeedbacks
Gets a list of feedback submitted against that ticket




```swift
client.lead.getFeedbacks(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Ticket ID for which feedbacks are to be fetched |  



Gets a list of feedback submitted against that ticket

*Returned Response:*




[TicketFeedbackList](#TicketFeedbackList)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Default</i></summary>

```json
{
  "value": {
    "items": [
      {
        "_id": "60c255bf00ecabfad19e9601",
        "company_id": "1",
        "ticket_id": "6095812876d2bf17143cb3b3",
        "user": {
          "_id": "5f8147abbd1a0a870f61f1a6",
          "authenticated": true,
          "user_id": "5f8147abbd1a0a870f61f1a6"
        },
        "category": "customers",
        "response": {
          "audio": 2,
          "video": 6
        },
        "createdAt": "2021-06-10T18:11:11.349Z",
        "updatedAt": "2021-06-10T18:11:11.349Z",
        "__v": 0
      }
    ]
  }
}
```
</details>

</details>









---


#### submitFeedback
Submit a response for feeback form against that ticket




```swift
client.lead.submitFeedback(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Ticket ID for which feedback is to be submitted |  
| body | TicketFeedbackPayload | yes | Request body |


Submit a response for feeback form against that ticket

*Returned Response:*




[TicketFeedback](#TicketFeedback)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Default</i></summary>

```json
{
  "value": {
    "_id": "60c255bf00ecabfad19e9601",
    "company_id": "1",
    "ticket_id": "6095812876d2bf17143cb3b3",
    "user": {
      "_id": "5f8147abbd1a0a870f61f1a6",
      "authenticated": true,
      "user_id": "5f8147abbd1a0a870f61f1a6"
    },
    "category": "customers",
    "response": {
      "audio": 2,
      "video": 6
    },
    "createdAt": "2021-06-10T18:11:11.349Z",
    "updatedAt": "2021-06-10T18:11:11.349Z",
    "__v": 0
  }
}
```
</details>

</details>









---


#### createHistory
Create history for specific application level ticket




```swift
client.application("<APPLICATION_ID>").lead.createHistory(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Ticket ID for which history is created |  
| body | TicketHistoryPayload | yes | Request body |


Create history for specific application level ticket, this history is seen on ticket detail page, this can be comment, log or rating.

*Returned Response:*




[TicketHistory](#TicketHistory)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Default</i></summary>

```json
{
  "value": {
    "_id": "601a9d52c26687d086c499ef",
    "ticket_id": "41",
    "type": "comment",
    "value": {
      "text": "d",
      "media": []
    },
    "created_on": {
      "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36",
      "platform": "web",
      "meta": {
        "browser": {
          "name": "Chrome",
          "version": "88.0.4324.96"
        },
        "os": {
          "name": "macOS",
          "version": "10.15.7",
          "versionName": "Catalina"
        },
        "platform": {
          "type": "desktop",
          "vendor": "Apple"
        },
        "engine": {
          "name": "Blink"
        }
      }
    },
    "created_by": "5d1363adf599d850df93175e",
    "createdAt": "2021-02-03T12:55:46.808Z",
    "updatedAt": "2021-02-03T12:55:46.808Z",
    "__v": 0
  }
}
```
</details>

</details>









---


#### getTicketHistory
Gets history list for specific application level ticket




```swift
client.application("<APPLICATION_ID>").lead.getTicketHistory(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Ticket ID for which history is to be fetched |  



Gets history list for specific application level ticket, this history is seen on ticket detail page, this can be comment, log or rating.

*Returned Response:*




[TicketHistoryList](#TicketHistoryList)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Default</i></summary>

```json
{
  "value": {
    "docs": [
      {
        "_id": "602e5384204225eed5cadae7",
        "ticket_id": "41",
        "type": "comment",
        "value": {
          "text": "hello service",
          "media": []
        },
        "created_on": {
          "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36",
          "platform": "web",
          "meta": {
            "browser": {
              "name": "Chrome",
              "version": "88.0.4324.150"
            },
            "os": {
              "name": "macOS",
              "version": "11.2.0"
            },
            "platform": {
              "type": "desktop",
              "vendor": "Apple"
            },
            "engine": {
              "name": "Blink"
            }
          }
        },
        "created_by": {
          "gender": "male",
          "accountType": "user",
          "active": true,
          "profilePicUrl": "https://hdn-1.fynd.com/company/884/applications/000000000000000000000001/theme/pictures/free/original/default-profile_nxhzui.png",
          "hasOldPasswordHash": false,
          "_id": "5f8147abbd1a0a870f61f1a6",
          "phoneNumbers": [
            {
              "active": true,
              "primary": true,
              "verified": true,
              "phone": "8412805281",
              "countryCode": 91
            }
          ],
          "firstName": "Satyen",
          "lastName": "Maurya",
          "emails": [
            {
              "active": true,
              "primary": true,
              "verified": true,
              "email": "satyenmaurya95@gmail.com"
            }
          ],
          "username": "satyenmaurya95_gmail_com_11118",
          "createdAt": "2020-10-10T05:33:31.119Z",
          "updatedAt": "2020-10-10T05:33:31.119Z",
          "uid": "5678",
          "__v": 0
        },
        "createdAt": "2021-02-18T11:46:12.522Z",
        "updatedAt": "2021-02-18T11:46:12.522Z",
        "__v": 0,
        "id": "602e5384204225eed5cadae7"
      },
      {
        "_id": "60372aa78a046d4d79c46e15",
        "ticket_id": "41",
        "type": "diff",
        "value": {
          "status": [
            "pending",
            "in_progress"
          ]
        },
        "created_by": {
          "gender": "male",
          "accountType": "user",
          "active": true,
          "profilePicUrl": "https://d2co8r51m5ca2d.cloudfront.net/inapp_banners/default_profile_img.png",
          "hasOldPasswordHash": false,
          "_id": "5e79e721768c6bf54b783146",
          "emails": [
            {
              "active": true,
              "primary": true,
              "verified": true,
              "email": "nikhilmshchs@gmail.com"
            },
            {
              "active": true,
              "primary": false,
              "verified": true,
              "email": "nikhilmanapure@gofynd.com"
            },
            {
              "active": true,
              "primary": false,
              "verified": true,
              "email": "nikhilmanapure@fynd.com"
            },
            {
              "active": true,
              "primary": false,
              "verified": true,
              "email": "nikhilmanapure@uniket.store"
            }
          ],
          "phoneNumbers": [
            {
              "active": true,
              "primary": true,
              "verified": true,
              "countryCode": 91,
              "phone": "9890425946"
            }
          ],
          "firstName": "Nikhil",
          "lastName": "Manapure",
          "username": "nikhilmanapure_gofynd_com_29298",
          "createdAt": "2020-03-24T10:55:29.298Z",
          "updatedAt": "2020-05-12T07:46:41.816Z",
          "uid": "5567",
          "__v": 2
        },
        "createdAt": "2021-02-25T04:42:15.225Z",
        "updatedAt": "2021-02-25T04:42:15.225Z",
        "__v": 0,
        "id": "60372aa78a046d4d79c46e15"
      }
    ],
    "total": 2,
    "limit": 100,
    "page": 1,
    "pages": 1
  }
}
```
</details>

</details>









---


#### getCustomForm
Get specific custom form using it's slug




```swift
client.application("<APPLICATION_ID>").lead.getCustomForm(slug: slug) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| slug | String | yes | Slug of form whose response is getting submitted |  



Get specific custom form using it's slug, this is used to view the form.

*Returned Response:*




[CustomForm](#CustomForm)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Default</i></summary>

```json
{
  "value": {
    "login_required": false,
    "should_notify": false,
    "inputs": [
      {
        "required": false,
        "type": "text",
        "display": "Name",
        "placeholder": "Please enter your name",
        "key": "name"
      }
    ],
    "available_assignees": [],
    "_id": "5fd258a9088f957f34c288fc",
    "title": "trail form",
    "description": "Trail form description",
    "slug": "trail-form",
    "application_id": "000000000000000000000003",
    "created_on": {
      "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36",
      "platform": "web",
      "meta": {
        "browser": {
          "name": "Chrome",
          "version": "87.0.4280.88"
        },
        "os": {
          "name": "macOS",
          "version": "10.15.6",
          "versionName": "Catalina"
        },
        "platform": {
          "type": "desktop",
          "vendor": "Apple"
        },
        "engine": {
          "name": "Blink"
        }
      }
    },
    "created_by": "5d1363adf599d850df93175e",
    "createdAt": "2020-12-10T17:19:37.515Z",
    "updatedAt": "2020-12-10T17:19:43.214Z",
    "__v": 0
  }
}
```
</details>

</details>









---


#### editCustomForm
Edit the given custom form




```swift
client.application("<APPLICATION_ID>").lead.editCustomForm(slug: slug, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| slug | String | yes | Slug of form whose response is getting submitted |  
| body | EditCustomFormPayload | yes | Request body |


Edit the given custom form field such as adding or deleting input, assignee, title, decription, notification and polling information.

*Returned Response:*




[CustomForm](#CustomForm)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Default</i></summary>

```json
{
  "value": {
    "login_required": false,
    "should_notify": false,
    "inputs": [
      {
        "type": "email",
        "showRegexInput": true,
        "enum": [],
        "regex": "\\S+@\\S+\\.\\S+",
        "display": "email",
        "required": true,
        "key": "email"
      },
      {
        "type": "number",
        "showRegexInput": false,
        "enum": [],
        "display": "Enter your fav number",
        "placeholder": "123",
        "key": "enter-your-fav-number"
      }
    ],
    "available_assignees": [],
    "_id": "602e900a2042255c03cadaf0",
    "title": "service-test-satyen",
    "description": "testing form from service",
    "slug": "service-test-satyen",
    "header_image": "https://hdn-1.addsale.com/x0/support-ticket/files/free/original/KZL86aN5l-service-test-satyen.jpeg",
    "application_id": "000000000000000000000001",
    "created_on": {
      "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36",
      "platform": "web",
      "meta": {
        "browser": {
          "name": "Chrome",
          "version": "88.0.4324.150"
        },
        "os": {
          "name": "macOS",
          "version": "11.2.0"
        },
        "platform": {
          "type": "desktop",
          "vendor": "Apple"
        },
        "engine": {
          "name": "Blink"
        }
      }
    },
    "created_by": "5f8147abbd1a0a870f61f1a6",
    "createdAt": "2021-02-18T16:04:26.495Z",
    "updatedAt": "2021-02-26T10:16:49.272Z",
    "__v": 0
  }
}
```
</details>

</details>









---


#### getCustomForms
Get list of custom form




```swift
client.application("<APPLICATION_ID>").lead.getCustomForms() { (response, error) in
    // Use response
}
```






Get list of custom form for given application

*Returned Response:*




[CustomFormList](#CustomFormList)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Default</i></summary>

```json
{
  "value": {
    "docs": [
      {
        "_id": "602e900a2042255c03cadaf0",
        "login_required": false,
        "should_notify": false,
        "inputs": [
          {
            "type": "email",
            "showRegexInput": true,
            "enum": [],
            "regex": "\\S+@\\S+\\.\\S+",
            "display": "email",
            "required": true,
            "key": "email"
          },
          {
            "type": "number",
            "showRegexInput": false,
            "enum": [],
            "display": "Enter your fav number",
            "placeholder": "123",
            "key": "enter-your-fav-number"
          },
          {
            "type": "textarea",
            "showRegexInput": false,
            "enum": [],
            "display": "kjhgjhvjb",
            "required": true,
            "key": "kjhgjhvjb"
          }
        ],
        "available_assignees": [],
        "title": "service-test-satyen",
        "description": "testing form from service",
        "slug": "service-test-satyen",
        "header_image": "https://hdn-1.addsale.com/x0/support-ticket/files/free/original/KZL86aN5l-service-test-satyen.jpeg",
        "application_id": "000000000000000000000001",
        "created_on": {
          "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36",
          "platform": "web",
          "meta": {
            "browser": {
              "name": "Chrome",
              "version": "88.0.4324.150"
            },
            "os": {
              "name": "macOS",
              "version": "11.2.0"
            },
            "platform": {
              "type": "desktop",
              "vendor": "Apple"
            },
            "engine": {
              "name": "Blink"
            }
          }
        },
        "created_by": "5f8147abbd1a0a870f61f1a6",
        "createdAt": "2021-02-18T16:04:26.495Z",
        "updatedAt": "2021-02-24T15:49:56.256Z",
        "__v": 0,
        "id": "602e900a2042255c03cadaf0"
      },
      {
        "_id": "60124e4a4d2bc363625e1bf4",
        "login_required": false,
        "should_notify": true,
        "inputs": [
          {
            "type": "text",
            "showRegexInput": false,
            "enum": [],
            "display": "asdf",
            "key": "asdf"
          },
          {
            "type": "mobile",
            "showRegexInput": false,
            "enum": [],
            "display": "mob num",
            "regex": "[0-9]{10}$",
            "key": "mob-num"
          }
        ],
        "available_assignees": [
          "5e79e721768c6bf54b783146"
        ],
        "title": "asdf444",
        "description": "adf",
        "slug": "asdf444",
        "application_id": "000000000000000000000001",
        "created_on": {
          "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36",
          "platform": "web",
          "meta": {
            "browser": {
              "name": "Chrome",
              "version": "88.0.4324.96"
            },
            "os": {
              "name": "macOS",
              "version": "10.15.7",
              "versionName": "Catalina"
            },
            "platform": {
              "type": "desktop",
              "vendor": "Apple"
            },
            "engine": {
              "name": "Blink"
            }
          }
        },
        "created_by": "5e79e721768c6bf54b783146",
        "createdAt": "2021-01-28T05:40:26.271Z",
        "updatedAt": "2021-02-18T16:02:32.086Z",
        "__v": 0,
        "poll_for_assignment": {
          "duration": 20,
          "message": "We are looking for executive to connect you",
          "success_message": "Executive found",
          "failure_message": "All our executives are busy at the moment, We have accepted your request and someone will connect with you soon!"
        },
        "id": "60124e4a4d2bc363625e1bf4"
      }
    ],
    "total": 2,
    "limit": 10,
    "page": 1,
    "pages": 1
  }
}
```
</details>

</details>









---


#### createCustomForm
Creates a new custom form




```swift
client.application("<APPLICATION_ID>").lead.createCustomForm(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreateCustomFormPayload | yes | Request body |


Creates a new custom form for given application

*Returned Response:*




[CustomForm](#CustomForm)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Default</i></summary>

```json
{
  "value": {
    "login_required": false,
    "should_notify": false,
    "inputs": [
      {
        "type": "email",
        "showRegexInput": true,
        "enum": [],
        "regex": "\\S+@\\S+\\.\\S+",
        "display": "email",
        "required": true,
        "key": "email"
      },
      {
        "type": "number",
        "showRegexInput": false,
        "enum": [],
        "display": "Enter your fav number",
        "placeholder": "123",
        "key": "enter-your-fav-number"
      }
    ],
    "available_assignees": [],
    "_id": "602e900a2042255c03cadaf0",
    "title": "service-test-satyen",
    "description": "testing form from service",
    "slug": "service-test-satyen",
    "header_image": "https://hdn-1.addsale.com/x0/support-ticket/files/free/original/KZL86aN5l-service-test-satyen.jpeg",
    "application_id": "000000000000000000000001",
    "created_on": {
      "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36",
      "platform": "web",
      "meta": {
        "browser": {
          "name": "Chrome",
          "version": "88.0.4324.150"
        },
        "os": {
          "name": "macOS",
          "version": "11.2.0"
        },
        "platform": {
          "type": "desktop",
          "vendor": "Apple"
        },
        "engine": {
          "name": "Blink"
        }
      }
    },
    "created_by": "5f8147abbd1a0a870f61f1a6",
    "createdAt": "2021-02-18T16:04:26.495Z",
    "updatedAt": "2021-02-26T10:16:49.272Z",
    "__v": 0
  }
}
```
</details>

</details>









---


#### getTokenForVideoRoom
Get Token to join a specific Video Room using it's unqiue name




```swift
client.lead.getTokenForVideoRoom(uniqueName: uniqueName) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| uniqueName | String | yes | Unique name of video room |  



Get Token to join a specific Video Room using it's unqiue name, this Token is your ticket to Room and also creates your identity there.

*Returned Response:*




[GetTokenForVideoRoomResponse](#GetTokenForVideoRoomResponse)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Default</i></summary>

```json
{
  "value": {
    "access_token": "your_token_to_the_room"
  }
}
```
</details>

</details>









---


#### getTokenForVideoRoom
Get Token to join a specific Video Room using it's unqiue name




```swift
client.application("<APPLICATION_ID>").lead.getTokenForVideoRoom(uniqueName: uniqueName) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| uniqueName | String | yes | Unique name of video room |  



Get Token to join a specific Video Room using it's unqiue name, this Token is your ticket to Room and also creates your identity there.

*Returned Response:*




[GetTokenForVideoRoomResponse](#GetTokenForVideoRoomResponse)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Default</i></summary>

```json
{
  "value": {
    "access_token": "your_token_to_the_room"
  }
}
```
</details>

</details>









---


#### getVideoParticipants
Get participants of a specific Video Room using it's unique name




```swift
client.lead.getVideoParticipants(uniqueName: uniqueName) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| uniqueName | String | yes | Unique name of Video Room |  



Get participants of a specific Video Room using it's unique name, this can be used to check if people are already there in the room and also to show their names.

*Returned Response:*




[GetParticipantsInsideVideoRoomResponse](#GetParticipantsInsideVideoRoomResponse)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Default</i></summary>

```json
{
  "value": {
    "participants": []
  }
}
```
</details>

</details>









---


#### getVideoParticipants
Get participants of a specific Video Room using it's unique name




```swift
client.application("<APPLICATION_ID>").lead.getVideoParticipants(uniqueName: uniqueName) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| uniqueName | String | yes | Unique name of Video Room |  



Get participants of a specific Video Room using it's unique name, this can be used to check if people are already there in the room and also to show their names.

*Returned Response:*




[GetParticipantsInsideVideoRoomResponse](#GetParticipantsInsideVideoRoomResponse)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Default</i></summary>

```json
{
  "value": {
    "participants": []
  }
}
```
</details>

</details>









---


#### openVideoRoom
Open a video room.




```swift
client.application("<APPLICATION_ID>").lead.openVideoRoom(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreateVideoRoomPayload | yes | Request body |


Open a video room.

*Returned Response:*




[CreateVideoRoomResponse](#CreateVideoRoomResponse)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Default</i></summary>

```json
{
  "value": {
    "unique_name": "alphanumeric123"
  }
}
```
</details>

</details>









---


#### closeVideoRoom
Close the video room and force all participants to leave.




```swift
client.application("<APPLICATION_ID>").lead.closeVideoRoom(uniqueName: uniqueName) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| uniqueName | String | yes | Unique name of Video Room |  



Close the video room and force all participants to leave.

*Returned Response:*




[CloseVideoRoomResponse](#CloseVideoRoomResponse)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Default</i></summary>

```json
{
  "value": {
    "success": true
  }
}
```
</details>

</details>









---


#### getGeneralConfig
Get general support configuration.




```swift
client.lead.getGeneralConfig() { (response, error) in
    // Use response
}
```






Get general support configuration.

*Returned Response:*




[CloseVideoRoomResponse](#CloseVideoRoomResponse)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Default</i></summary>

```json
{
  "value": {
    "success": true
  }
}
```
</details>

</details>









---



### Schemas

 
 
 #### [TicketList](#TicketList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Ticket](#Ticket)]? |  yes  | List of tickets |
 | filters | [Filter](#Filter)? |  yes  | All the filters available for tickets |
 | page | [Page](#Page)? |  yes  | Describes the pagination state |

---


 
 
 #### [Page](#Page)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemTotal | Int? |  yes  |  |
 | nextId | String? |  yes  |  |
 | hasPrevious | Bool? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | current | Int? |  yes  |  |
 | type | String |  no  |  |
 | size | Int? |  yes  |  |

---


 
 
 #### [TicketHistoryList](#TicketHistoryList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[TicketHistory](#TicketHistory)]? |  yes  | List of ticket history |
 | page | [Page](#Page)? |  yes  | Describes the pagination state |

---


 
 
 #### [CustomFormList](#CustomFormList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[CustomForm](#CustomForm)]? |  yes  | List of forms |
 | page | [Page](#Page)? |  yes  | Describes the pagination state |

---


 
 
 #### [CreateCustomFormPayload](#CreateCustomFormPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String |  no  | Slug for the form |
 | title | String |  no  | Title for the form |
 | inputs | [[String: Any]] |  no  | List of all the form components |
 | description | String? |  yes  | Description of the form |
 | headerImage | String? |  yes  | Header image that is to be shown for the form |
 | priority | [PriorityEnum](#PriorityEnum) |  no  | Describes the priority of the tickets created by the form |
 | shouldNotify | Bool? |  yes  | Indicates if staff should be notified when a response is received |
 | successMessage | String? |  yes  | Success message that will be shown on submission |
 | pollForAssignment | [PollForAssignment](#PollForAssignment)? |  yes  | Describes how polling will be done for the tickets createds |

---


 
 
 #### [EditCustomFormPayload](#EditCustomFormPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  | Title for the form |
 | inputs | [[String: Any]] |  no  | List of all the form components |
 | description | String? |  yes  | Description of the form |
 | priority | [PriorityEnum](#PriorityEnum) |  no  | Describes the priority of the tickets created by the form |
 | headerImage | String? |  yes  | Header image that is to be shown for the form |
 | shouldNotify | Bool? |  yes  | Indicates if staff should be notified when a response is received |
 | loginRequired | Bool? |  yes  | Denotes if login is required to make a form response submission |
 | successMessage | String? |  yes  | Success message that will be shown on submission |
 | pollForAssignment | [PollForAssignment](#PollForAssignment)? |  yes  | Describes how polling will be done for the tickets createds |

---


 
 
 #### [EditTicketPayload](#EditTicketPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | content | [TicketContent](#TicketContent)? |  yes  | Ticket conetent details |
 | category | String? |  yes  | Category assigned to the ticket |
 | subCategory | String? |  yes  | Sub-category assigned to the ticket |
 | source | String? |  yes  | Denotes if the ticket was created at company or application level |
 | status | String? |  yes  | Denotes in what state is the ticket |
 | priority | [PriorityEnum](#PriorityEnum)? |  yes  | Denotes the priority of ticket |
 | assignedTo | [AgentChangePayload](#AgentChangePayload)? |  yes  | Details of support staff to whom ticket is assigned |
 | tags | [String]? |  yes  | Tags relevant to ticket |

---


 
 
 #### [AgentChangePayload](#AgentChangePayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | agentId | String |  no  | Agent's unique ID |

---


 
 
 #### [CreateVideoRoomResponse](#CreateVideoRoomResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uniqueName | String |  no  | Video Room's unique name |

---


 
 
 #### [CloseVideoRoomResponse](#CloseVideoRoomResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  | Denotes if operation was successfully |

---


 
 
 #### [CreateVideoRoomPayload](#CreateVideoRoomPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uniqueName | String |  no  | Ticket id |
 | notify | [[NotifyUser](#NotifyUser)]? |  yes  | List of people to be notified |

---


 
 
 #### [NotifyUser](#NotifyUser)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | countryCode | String |  no  | Country code |
 | phoneNumber | String |  no  | Phone number |

---


 
 
 #### [Filter](#Filter)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | priorities | [[Priority](#Priority)] |  no  | List of possible priorities for tickets |
 | categories | [[TicketCategory](#TicketCategory)]? |  yes  | List of possible categories for tickets |
 | statuses | [[Status](#Status)] |  no  | List of possible statuses for tickets |
 | assignees | [[String: Any]] |  no  | List of support staff availble for tickets assignment |

---


 
 
 #### [TicketHistoryPayload](#TicketHistoryPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | [String: Any] |  no  | Details of history event |
 | type | [HistoryTypeEnum](#HistoryTypeEnum) |  no  | Type of history event |

---


 
 
 #### [CustomFormSubmissionPayload](#CustomFormSubmissionPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | response | [[String: Any]] |  no  | Form response |
 | attachments | [[TicketAsset](#TicketAsset)]? |  yes  | List of all attachments related to the form |

---


 
 
 #### [GetTokenForVideoRoomResponse](#GetTokenForVideoRoomResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | accessToken | String |  no  | Access token to be used for video room |

---


 
 
 #### [GetParticipantsInsideVideoRoomResponse](#GetParticipantsInsideVideoRoomResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | participants | [[Participant](#Participant)] |  no  | List of participants of the video room |

---


 
 
 #### [Participant](#Participant)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [UserSchema](#UserSchema)? |  yes  | Details of participant |
 | identity | String? |  yes  | Unique identifier of participant |
 | status | String? |  yes  | Status of participant |

---


 
 
 #### [UserSchema](#UserSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | firstName | String? |  yes  | First name |
 | lastName | String? |  yes  | Last name |
 | phoneNumbers | [[PhoneNumber](#PhoneNumber)]? |  yes  | List of phone numbers |
 | emails | [[Email](#Email)]? |  yes  | List of email addresses |
 | gender | String? |  yes  | Gender of user |
 | active | Bool? |  yes  | Is account active |
 | profilePicUrl | String? |  yes  | URL for profile pic |
 | username | String? |  yes  | username of user |
 | accountType | String? |  yes  | Type of account |
 | uid | String? |  yes  | Unique identifier of user |
 | debug | [Debug](#Debug)? |  yes  | Used for debugging |
 | hasOldPasswordHash | Bool? |  yes  | Denotes if user has old password hash |
 | id | String? |  yes  | Unique identifier of user |
 | createdAt | String? |  yes  | Time of user creation |
 | updatedAt | String? |  yes  | Last time of user details update |

---


 
 
 #### [PhoneNumber](#PhoneNumber)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool? |  yes  | Denotes if the phone number is active |
 | primary | Bool? |  yes  | Denotes it's the primary phone number for the account |
 | verified | Bool? |  yes  | Denotes it's a verified phone number |
 | phone | String? |  yes  | Phone number |
 | countryCode | Int? |  yes  | Country code |

---


 
 
 #### [Email](#Email)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | primary | Bool? |  yes  | Denotes it's the primary email for the account |
 | verified | Bool? |  yes  | Denotes it's a verified email |
 | email | String? |  yes  | Email Address |
 | active | Bool? |  yes  | Denotes if the email is active |

---


 
 
 #### [Debug](#Debug)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | source | String? |  yes  | Source of user |
 | platform | String? |  yes  | Platform of user |

---


 
 
 #### [SubmitCustomFormResponse](#SubmitCustomFormResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  | Success message for form submission |
 | ticket | [Ticket](#Ticket) |  no  | Ticket created on form submission |

---


 
 
 #### [TicketContext](#TicketContext)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | applicationId | String? |  yes  | Application ID related to the ticket |
 | companyId | String |  no  | Company ID related to the ticket |

---


 
 
 #### [CreatedOn](#CreatedOn)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | userAgent | String |  no  | Useragent details |

---


 
 
 #### [TicketAsset](#TicketAsset)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  | Display text for asset |
 | value | String |  no  | To be used for details |
 | type | [TicketAssetTypeEnum](#TicketAssetTypeEnum) |  no  | Type of asset |

---


 
 
 #### [TicketContent](#TicketContent)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  | Title for ticket |
 | description | String? |  yes  | Long description of issue |
 | attachments | [[TicketAsset](#TicketAsset)]? |  yes  | List of all attachments related to the ticket |

---


 
 
 #### [AddTicketPayload](#AddTicketPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdBy | [String: Any]? |  yes  | Creator of the ticket |
 | status | String? |  yes  | Status of the ticket |
 | priority | [PriorityEnum](#PriorityEnum)? |  yes  | Priority of the ticket |
 | category | String |  no  | Category of the ticket |
 | content | [TicketContent](#TicketContent) |  no  | Content for the ticket |
 | customJson | [String: Any]? |  yes  | optional custom data that needs to be sent |

---


 
 
 #### [Priority](#Priority)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | [PriorityEnum](#PriorityEnum) |  no  | Key for priority |
 | display | String |  no  | Display text for priority |
 | color | String |  no  | Color for priority |

---


 
 
 #### [Status](#Status)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String |  no  | Key for status |
 | display | String |  no  | Display text for status |
 | color | String |  no  | Color for status |

---


 
 
 #### [TicketCategory](#TicketCategory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String |  no  | Key for category |
 | display | String |  no  | Display text for category |
 | form | [CustomForm](#CustomForm)? |  yes  | Form related to the category |
 | subCategories | [[TicketSubCategory](#TicketSubCategory)]? |  yes  | Sub-category related to the category |
 | feedbackForm | [TicketFeedbackForm](#TicketFeedbackForm)? |  yes  | Feedback form of category used to submit ticket feedback |

---


 
 
 #### [TicketSubCategory](#TicketSubCategory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String |  no  | Key for sub-category |
 | display | String |  no  | Display text for sub-category |

---


 
 
 #### [TicketFeedbackForm](#TicketFeedbackForm)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  | Feedback form title that will be shown to the user |
 | display | [[String: Any]]? |  yes  | List of all the form fields |

---


 
 
 #### [TicketFeedbackList](#TicketFeedbackList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[TicketFeedback](#TicketFeedback)]? |  yes  | List of all ticket feedback for the ticket |

---


 
 
 #### [TicketFeedbackPayload](#TicketFeedbackPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | formResponse | [String: Any]? |  yes  | Key-value pairs of all the form fields and their response |

---


 
 
 #### [SubmitButton](#SubmitButton)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  | Title for submit button |
 | titleColor | String |  no  | Title color submit button |
 | backgroundColor | String |  no  | Color for submit button |

---


 
 
 #### [PollForAssignment](#PollForAssignment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | duration | Double |  no  | Duration for polling of staff |
 | message | String |  no  | Message for polling |
 | successMessage | String |  no  | Message for successful polling |
 | failureMessage | String |  no  | Message if polling failed |

---


 
 
 #### [CustomForm](#CustomForm)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | applicationId | String |  no  | Application ID for form |
 | slug | String |  no  | Slug for the form, which is to be used for accessing the form |
 | headerImage | String? |  yes  | Form header image that will be shown to the user |
 | title | String |  no  | Form title that will be shown to the user |
 | description | String? |  yes  | Form description that will be shown to the user |
 | priority | [Priority](#Priority) |  no  | Sets priority of tickets created by form response |
 | loginRequired | Bool |  no  | Denotes if login is required to make a form response submission |
 | shouldNotify | Bool |  no  | Denotes if new response submission for the form should be notified to the assignees |
 | successMessage | String? |  yes  | Message that is to be shown on succesfull form response submission |
 | submitButton | [SubmitButton](#SubmitButton)? |  yes  | Details for submit button |
 | inputs | [[String: Any]] |  no  | List of all the form fields |
 | createdOn | [CreatedOn](#CreatedOn)? |  yes  | Gives details of when the form was created |
 | pollForAssignment | [PollForAssignment](#PollForAssignment)? |  yes  | Details of how polling should be done for support |
 | id | String |  no  | Unique identifier for the form |

---


 
 
 #### [CommunicationDetails](#CommunicationDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  | Enum type for the communication method |
 | title | String? |  yes  | Title for the communication method |
 | value | String? |  yes  | Value for the communication method |
 | description | String? |  yes  | Short description for the communication method |
 | enabled | Bool? |  yes  | Denotes if this communication method has to be shown |

---


 
 
 #### [SupportGeneralConfig](#SupportGeneralConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  | Unique id |
 | supportEmail | [CommunicationDetails](#CommunicationDetails)? |  yes  | Support e-mail details |
 | supportPhone | [CommunicationDetails](#CommunicationDetails)? |  yes  | Support Phone number details |
 | supportFaq | [CommunicationDetails](#CommunicationDetails)? |  yes  | Support FAQ details |
 | showCommunicationInfo | Bool? |  yes  | Denotes if support communication info should be shown |
 | supportCommunication | [CommunicationDetails](#CommunicationDetails)? |  yes  | Support communication array list details |
 | showSupportDris | Bool? |  yes  | Denotes if support DRIS info should be shown |
 | integration | [String: Any]? |  yes  | Contains integrations basic information |

---


 
 
 #### [FeedbackForm](#FeedbackForm)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | inputs | [String: Any]? |  yes  | Input details for the feed back form |
 | title | String? |  yes  | Title for the feed back form |
 | timestamps | [String: Any]? |  yes  | Gives details of category releted data |

---


 
 
 #### [CategorySchema](#CategorySchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  | Category display value identifier |
 | key | String? |  yes  | Category key value identifier |
 | subCategories | [CategorySchema](#CategorySchema)? |  yes  | Support category array list details |
 | groupId | Double? |  yes  | Group id of category releted data |
 | feedbackForm | [FeedbackForm](#FeedbackForm)? |  yes  | Support category array list details |

---


 
 
 #### [CategoryData](#CategoryData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | list | [CategorySchema](#CategorySchema)? |  yes  |  |

---


 
 
 #### [IntegrationConfig](#IntegrationConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  | Unique id |
 | integrationType | String? |  yes  | Enum string values for integration |
 | baseUrl | String? |  yes  | Integration base url for validate and create ticket |
 | createTicketApikey | String? |  yes  | Integration apikey to validate and create ticket |
 | updateTicketApikey | String? |  yes  | Integration apikey to update ticket |
 | categorySyncApikey | String? |  yes  | Integration apikey to sync category of selected type |
 | categoryData | [CategoryData](#CategoryData)? |  yes  | Support category array list details |
 | webhookApikey | String? |  yes  | Integration webhook apikey to got callbacks from integration type dashboard like freshdesk, etc |
 | configCompleted | Bool? |  yes  | Denotes the current intergration is completed or partially done |
 | allowTicketCreation | Bool? |  yes  | Denotes ticket creation enable or disable on platform |
 | showListing | Bool? |  yes  | Denotes ticket listing enable or disable on platform |

---


 
 
 #### [FeedbackResponseItem](#FeedbackResponseItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String |  no  | Question/Title of the form field |
 | key | String |  no  | Key of the form field |
 | value | String |  no  | User response value for the form field |

---


 
 
 #### [TicketFeedback](#TicketFeedback)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  | Unique identifier for the feedback |
 | ticketId | String |  no  | Readable ticket number |
 | companyId | String |  no  | Company id for which ticket was raised |
 | response | [[FeedbackResponseItem](#FeedbackResponseItem)] |  no  |  |
 | category | String? |  yes  | Category of the ticket |
 | user | [String: Any]? |  yes  | User who submitted the feedback |
 | updatedAt | String? |  yes  | Time when the feedback was last updated |
 | createdAt | String? |  yes  | Time when the feedback was created |

---


 
 
 #### [TicketHistory](#TicketHistory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  | Type of the history event |
 | value | [String: Any] |  no  | Data of the history event |
 | ticketId | String |  no  | Readable ticket number |
 | createdOn | [CreatedOn](#CreatedOn)? |  yes  | Time of creation of the history event |
 | createdBy | [String: Any]? |  yes  | User who created the history event |
 | id | String |  no  | Unique identifier of the history event |
 | updatedAt | String? |  yes  | Time of last update of the history event |
 | createdAt | String? |  yes  | Time of creation of the history event |

---


 
 
 #### [Ticket](#Ticket)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | context | [TicketContext](#TicketContext)? |  yes  | Details of company and application realated to the ticket |
 | createdOn | [CreatedOn](#CreatedOn)? |  yes  | Details of company and application realated to the ticket |
 | responseId | String? |  yes  | Details of company and application realated to the ticket |
 | content | [TicketContent](#TicketContent)? |  yes  | Ticket conetent details |
 | ticketId | String |  no  | Readable ticket number |
 | category | [TicketCategory](#TicketCategory) |  no  | Category assigned to the ticket |
 | subCategory | [TicketSubCategory](#TicketSubCategory)? |  yes  | Sub-category assigned to the ticket |
 | source | [TicketSourceEnum](#TicketSourceEnum) |  no  | Denotes if the ticket was created at company or application level |
 | status | [Status](#Status) |  no  | Denotes in what state is the ticket |
 | priority | [Priority](#Priority) |  no  | Denotes the priority of ticket |
 | createdBy | [String: Any]? |  yes  | User details of ticket creator |
 | assignedTo | [String: Any]? |  yes  | Details of support staff to whom ticket is assigned |
 | tags | [String]? |  yes  | Tags relevant to ticket |
 | customJson | [String: Any]? |  yes  | custom json relevant to the ticket |
 | isFeedbackPending | Bool? |  yes  | Denotes if feedback submission is pending for the ticket |
 | integration | [String: Any]? |  yes  | Integration type and its details of the ticket |
 | id | String |  no  | Unique identifier for the ticket |
 | updatedAt | String? |  yes  | Time when the ticket was last updated |
 | createdAt | String? |  yes  | Time when the ticket was created |

---




### Enums





 #### [PriorityEnum](#PriorityEnum)
 Type : string

 | Name | Value | Description |
 | ---- | ----- | ----------- |
 | low | low | This means ticket is low priority |
 | medium | medium | This means ticket is medium priority |
 | high | high | This means ticket is high priority |
 | urgent | urgent | This means ticket is of urgent priority |

---



 #### [HistoryTypeEnum](#HistoryTypeEnum)
 Type : string

 | Name | Value | Description |
 | ---- | ----- | ----------- |
 | rating | rating | This means history event is a rating |
 | log | log | This means history event is a changelog |
 | comment | comment | This means history event is a comment |

---



 #### [TicketAssetTypeEnum](#TicketAssetTypeEnum)
 Type : string

 | Name | Value | Description |
 | ---- | ----- | ----------- |
 | image | image | Denotes asset is of image type |
 | video | video | Denotes asset is of video type |
 | file | file | Denotes asset is of file type |
 | youtube | youtube | Denotes asset is an youtube link |
 | product | product | Denotes asset is of product type |
 | collection | collection | Denotes asset is of collection type |
 | brand | brand | Denotes asset is of brand type |
 | shipment | shipment | Denotes asset is of shipment type |
 | order | order | Denotes asset is of order type |

---



 #### [TicketSourceEnum](#TicketSourceEnum)
 Type : string

 | Name | Value | Description |
 | ---- | ----- | ----------- |
 | platformPanel | platform_panel | This means it is company level ticket |
 | salesChannel | sales_channel | This means it is a application/sales channel level ticket |

---





