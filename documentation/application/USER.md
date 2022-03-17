



##### [Back to Application docs](./README.md)

## User Methods
Authentication Service
* [loginWithFacebook](#loginwithfacebook)
* [loginWithGoogle](#loginwithgoogle)
* [loginWithGoogleAndroid](#loginwithgoogleandroid)
* [loginWithGoogleIOS](#loginwithgoogleios)
* [loginWithAppleIOS](#loginwithappleios)
* [loginWithOTP](#loginwithotp)
* [loginWithEmailAndPassword](#loginwithemailandpassword)
* [sendResetPasswordEmail](#sendresetpasswordemail)
* [forgotPassword](#forgotpassword)
* [sendResetToken](#sendresettoken)
* [loginWithToken](#loginwithtoken)
* [registerWithForm](#registerwithform)
* [verifyEmail](#verifyemail)
* [verifyMobile](#verifymobile)
* [hasPassword](#haspassword)
* [updatePassword](#updatepassword)
* [logout](#logout)
* [sendOTPOnMobile](#sendotponmobile)
* [verifyMobileOTP](#verifymobileotp)
* [sendOTPOnEmail](#sendotponemail)
* [verifyEmailOTP](#verifyemailotp)
* [getLoggedInUser](#getloggedinuser)
* [getListOfActiveSessions](#getlistofactivesessions)
* [getPlatformConfig](#getplatformconfig)
* [updateProfile](#updateprofile)
* [addMobileNumber](#addmobilenumber)
* [deleteMobileNumber](#deletemobilenumber)
* [setMobileNumberAsPrimary](#setmobilenumberasprimary)
* [sendVerificationLinkToMobile](#sendverificationlinktomobile)
* [addEmail](#addemail)
* [deleteEmail](#deleteemail)
* [setEmailAsPrimary](#setemailasprimary)
* [sendVerificationLinkToEmail](#sendverificationlinktoemail)



## Methods with example and description


#### loginWithFacebook
Login or Register using Facebook




```swift
user.loginWithFacebook(platform: platform, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| platform | String? | no | ID of the application |  
| body | OAuthRequestSchema | yes | Request body |


Use this API to login or register using Facebook credentials.

*Returned Response:*




[AuthSuccess](#AuthSuccess)

Success. Returns a JSON object with the user details. Check the example shown below or refer `AuthSuccess` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Success</i></summary>

```json
{
  "value": {
    "user_exists": false,
    "user": {
      "emails": [
        {
          "email": "www.akash24@gmail.com",
          "verified": true,
          "primary": true,
          "active": true
        }
      ],
      "phone_numbers": [],
      "first_name": "Akash",
      "last_name": "Mane",
      "debug": {
        "platform": "Fynd"
      },
      "active": true
    },
    "register_token": "d960c388-e286-43d9-b688-f6d1decc632d"
  }
}
```
</details>

</details>









---


#### loginWithGoogle
Login or Register using Google




```swift
user.loginWithGoogle(platform: platform, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| platform | String? | no | ID of the application |  
| body | OAuthRequestSchema | yes | Request body |


Use this API to login or register using Google Account credentials.

*Returned Response:*




[AuthSuccess](#AuthSuccess)

Success. Returns a JSON object with the user details. Check the example shown below or refer `AuthSuccess` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Success</i></summary>

```json
{
  "value": {
    "user_exists": false,
    "user": {
      "emails": [
        {
          "email": "www.akash24@gmail.com",
          "verified": true,
          "primary": true,
          "active": true
        }
      ],
      "phone_numbers": [],
      "first_name": "Akash",
      "last_name": "Mane",
      "debug": {
        "platform": "Fynd"
      },
      "active": true
    },
    "register_token": "d960c388-e286-43d9-b688-f6d1decc632d"
  }
}
```
</details>

</details>









---


#### loginWithGoogleAndroid
Login or Register using Google on Android




```swift
user.loginWithGoogleAndroid(platform: platform, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| platform | String? | no | ID of the application |  
| body | OAuthRequestSchema | yes | Request body |


Use this API to login or register in Android app using Google Account credentials.

*Returned Response:*




[AuthSuccess](#AuthSuccess)

Success. Returns a JSON object with the user details. Check the example shown below or refer `AuthSuccess` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Success</i></summary>

```json
{
  "value": {
    "user_exists": false,
    "user": {
      "emails": [
        {
          "email": "www.akash24@gmail.com",
          "verified": true,
          "primary": true,
          "active": true
        }
      ],
      "phone_numbers": [],
      "first_name": "Akash",
      "last_name": "Mane",
      "debug": {
        "platform": "Fynd"
      },
      "active": true
    },
    "register_token": "d960c388-e286-43d9-b688-f6d1decc632d"
  }
}
```
</details>

</details>









---


#### loginWithGoogleIOS
Login or Register using Google on iOS




```swift
user.loginWithGoogleIOS(platform: platform, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| platform | String? | no | ID of the application |  
| body | OAuthRequestSchema | yes | Request body |


Use this API to login or register in iOS app using Google Account credentials.

*Returned Response:*




[AuthSuccess](#AuthSuccess)

Success. Returns a JSON object with the user details. Check the example shown below or refer `AuthSuccess` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Success</i></summary>

```json
{
  "value": {
    "user_exists": false,
    "user": {
      "emails": [
        {
          "email": "www.akash24@gmail.com",
          "verified": true,
          "primary": true,
          "active": true
        }
      ],
      "phone_numbers": [],
      "first_name": "Akash",
      "last_name": "Mane",
      "debug": {
        "platform": "Fynd"
      },
      "active": true
    },
    "register_token": "d960c388-e286-43d9-b688-f6d1decc632d"
  }
}
```
</details>

</details>









---


#### loginWithAppleIOS
Login or Register using Apple on iOS




```swift
user.loginWithAppleIOS(platform: platform, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| platform | String? | no | ID of the application |  
| body | OAuthRequestAppleSchema | yes | Request body |


Use this API to login or register in iOS app using Apple Account credentials.

*Returned Response:*




[AuthSuccess](#AuthSuccess)

Success. Returns a JSON object with the user details. Check the example shown below or refer `AuthSuccess` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Success</i></summary>

```json
{
  "value": {
    "user_exists": false,
    "user": {
      "emails": [
        {
          "email": "www.akash24@gmail.com",
          "verified": true,
          "primary": true,
          "active": true
        }
      ],
      "phone_numbers": [],
      "first_name": "Akash",
      "last_name": "Mane",
      "debug": {
        "platform": "Fynd"
      },
      "active": true
    },
    "register_token": "d960c388-e286-43d9-b688-f6d1decc632d"
  }
}
```
</details>

</details>









---


#### loginWithOTP
Login or Register with OTP




```swift
user.loginWithOTP(platform: platform, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| platform | String? | no | ID of the application |  
| body | SendOtpRequestSchema | yes | Request body |


Use this API to login or register with a One-time Password (OTP) sent via Email or SMS.

*Returned Response:*




[SendOtpResponse](#SendOtpResponse)

Success. Check the example shown below or refer `SendOtpResponse` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Success</i></summary>

```json
{
  "value": {
    "success": true,
    "request_id": "01503005aeab87cbed93d40f46cc2749",
    "message": "OTP sent",
    "mobile": "8652523958",
    "country_code": "91",
    "resend_timer": 30,
    "resendToken": "58e72ca0-66ae-11eb-98b1-77d61363826e"
  }
}
```
</details>

</details>









---


#### loginWithEmailAndPassword
Login or Register with password




```swift
user.loginWithEmailAndPassword(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | PasswordLoginRequestSchema | yes | Request body |


Use this API to login or register using an email address and password.

*Returned Response:*




[LoginSuccess](#LoginSuccess)

Success. Check the example shown below or refer `LoginSuccess` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Success</i></summary>

```json
{
  "value": {
    "user": {
      "debug": {
        "source": "deadlock",
        "platform": "000000000000000000000001"
      },
      "gender": "male",
      "account_type": "user",
      "roles": [
        "Test-Role"
      ],
      "active": true,
      "profile_pic_url": "https://d2co8r51m5ca2d.cloudfront.net/inapp_banners/default_profile_img.png",
      "has_old_password_hash": false,
      "_id": "5e68af49cfa09bf7233022f1",
      "first_name": "Akash",
      "last_name": "Mane",
      "username": "akashmane_gofynd_com_10039",
      "phone_numbers": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "phone": "8652523958",
          "country_code": 91
        }
      ],
      "emails": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "email": "akashmane@gofynd.com"
        },
        {
          "active": true,
          "primary": false,
          "verified": true,
          "email": "akashmane@fynd.com"
        },
        {
          "active": true,
          "primary": false,
          "verified": true,
          "email": "akashmane@uniket.store"
        }
      ],
      "created_at": "2020-03-11T09:28:41.982Z",
      "updated_at": "2021-02-04T10:10:44.981Z"
    }
  }
}
```
</details>

</details>









---


#### sendResetPasswordEmail
Reset Password




```swift
user.sendResetPasswordEmail(platform: platform, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| platform | String? | no | ID of the application |  
| body | SendResetPasswordEmailRequestSchema | yes | Request body |


Use this API to reset a password using the link sent on email.

*Returned Response:*




[ResetPasswordSuccess](#ResetPasswordSuccess)

Success. Check the example shown below or refer `ResetPasswordSuccess` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "status": "sent"
}
```
</details>









---


#### forgotPassword
Forgot Password




```swift
user.forgotPassword(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | ForgotPasswordRequestSchema | yes | Request body |


Use this API to reset a password using the code sent on email or SMS.

*Returned Response:*




[LoginSuccess](#LoginSuccess)

Success. Check the example shown below or refer `LoginSuccess` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Success</i></summary>

```json
{
  "value": {
    "user": {
      "debug": {
        "source": "deadlock",
        "platform": "000000000000000000000001"
      },
      "gender": "male",
      "account_type": "user",
      "roles": [
        "Test-Role"
      ],
      "active": true,
      "profile_pic_url": "https://d2co8r51m5ca2d.cloudfront.net/inapp_banners/default_profile_img.png",
      "has_old_password_hash": false,
      "_id": "5e68af49cfa09bf7233022f1",
      "first_name": "Akash",
      "last_name": "Mane",
      "username": "akashmane_gofynd_com_10039",
      "phone_numbers": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "phone": "8652523958",
          "country_code": 91
        }
      ],
      "emails": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "email": "akashmane@gofynd.com"
        },
        {
          "active": true,
          "primary": false,
          "verified": true,
          "email": "akashmane@fynd.com"
        },
        {
          "active": true,
          "primary": false,
          "verified": true,
          "email": "akashmane@uniket.store"
        }
      ],
      "created_at": "2020-03-11T09:28:41.982Z",
      "updated_at": "2021-02-04T10:10:44.981Z"
    }
  }
}
```
</details>

</details>









---


#### sendResetToken
Reset Password using token




```swift
user.sendResetToken(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CodeRequestBodySchema | yes | Request body |


Use this API to send code to reset password.

*Returned Response:*




[ResetPasswordSuccess](#ResetPasswordSuccess)

Success. Check the example shown below or refer `ResetPasswordSuccess` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "status": "success"
}
```
</details>









---


#### loginWithToken
Login or Register with token




```swift
user.loginWithToken(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | TokenRequestBodySchema | yes | Request body |


Use this API to login or register using a token for authentication.

*Returned Response:*




[LoginSuccess](#LoginSuccess)

Success. Check the example shown below or refer `LoginSuccess` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Success</i></summary>

```json
{
  "value": {
    "user": {
      "debug": {
        "source": "deadlock",
        "platform": "000000000000000000000001"
      },
      "gender": "male",
      "account_type": "user",
      "roles": [
        "Test-Role"
      ],
      "active": true,
      "profile_pic_url": "https://d2co8r51m5ca2d.cloudfront.net/inapp_banners/default_profile_img.png",
      "has_old_password_hash": false,
      "_id": "5e68af49cfa09bf7233022f1",
      "first_name": "Akash",
      "last_name": "Mane",
      "username": "akashmane_gofynd_com_10039",
      "phone_numbers": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "phone": "8652523958",
          "country_code": 91
        }
      ],
      "emails": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "email": "akashmane@gofynd.com"
        },
        {
          "active": true,
          "primary": false,
          "verified": true,
          "email": "akashmane@fynd.com"
        },
        {
          "active": true,
          "primary": false,
          "verified": true,
          "email": "akashmane@uniket.store"
        }
      ],
      "created_at": "2020-03-11T09:28:41.982Z",
      "updated_at": "2021-02-04T10:10:44.981Z"
    }
  }
}
```
</details>

</details>









---


#### registerWithForm
Registration using a form




```swift
user.registerWithForm(platform: platform, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| platform | String? | no | ID of the application |  
| body | FormRegisterRequestSchema | yes | Request body |


Use this API to perform user registration by sending form data in the request body.

*Returned Response:*




[RegisterFormSuccess](#RegisterFormSuccess)

Success. Check the example shown below or refer `RegisterFormSuccess` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "request_id": "ebc059191393681cdfb805b5424bddad",
  "message": "OTP sent",
  "mobile": "7400448798",
  "country_code": "91",
  "resend_timer": 30,
  "resend_token": "5197ff90-66e2-11eb-9399-0312fbf2c2a6",
  "verify_mobile_otp": true,
  "register_token": "276e718a-d406-4a4b-83f7-cb6cb72b99ff",
  "userExists": false
}
```
</details>









---


#### verifyEmail
Verify email




```swift
user.verifyEmail(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CodeRequestBodySchema | yes | Request body |


Use this API to send a verification code to verify an email.

*Returned Response:*




[VerifyEmailSuccess](#VerifyEmailSuccess)

Success. Check the example shown below or refer `VerifyEmailSuccess` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "message": "verified"
}
```
</details>









---


#### verifyMobile
Verify mobile




```swift
user.verifyMobile(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CodeRequestBodySchema | yes | Request body |


Use this API to send a verification code to verify a mobile number.

*Returned Response:*




[VerifyEmailSuccess](#VerifyEmailSuccess)

Success. Check the example shown below or refer `VerifyEmailSuccess` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "message": "verified"
}
```
</details>









---


#### hasPassword
Check password




```swift
user.hasPassword() { (response, error) in
    // Use response
}
```






Use this API to check if user has created a password for login.

*Returned Response:*




[HasPasswordSuccess](#HasPasswordSuccess)

Success. Returns a boolean value. Check the example shown below or refer `HasPasswordSuccess` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### updatePassword
Update user password




```swift
user.updatePassword(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | UpdatePasswordRequestSchema | yes | Request body |


Use this API to update the password.

*Returned Response:*




[VerifyEmailSuccess](#VerifyEmailSuccess)

Success. Returns a success message. Refer `VerifyEmailSuccess` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "message": "success"
}
```
</details>









---


#### logout
Logs out currently logged in user




```swift
user.logout() { (response, error) in
    // Use response
}
```






Use this API to check to logout a user from the app.

*Returned Response:*




[LogoutSuccess](#LogoutSuccess)

Success. Returns a success message as shown below. Refer `LogoutSuccess` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### sendOTPOnMobile
Send OTP on mobile




```swift
user.sendOTPOnMobile(platform: platform, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| platform | String? | no | ID of the application |  
| body | SendMobileOtpRequestSchema | yes | Request body |


Use this API to send an OTP to a mobile number.

*Returned Response:*




[OtpSuccess](#OtpSuccess)

Success. Returns a JSON object as shown below. Refer `OtpSuccess` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "request_id": "01503005aeab87cbed93d40f46cc2749",
  "message": "OTP sent",
  "mobile": "8652523958",
  "country_code": "91",
  "resend_timer": 30,
  "resend_token": "18fc3d60-66e5-11eb-9399-0312fbf2c2a6"
}
```
</details>









---


#### verifyMobileOTP
Verify OTP on mobile




```swift
user.verifyMobileOTP(platform: platform, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| platform | String? | no | ID of the application |  
| body | VerifyOtpRequestSchema | yes | Request body |


Use this API to verify the OTP received on a mobile number.

*Returned Response:*




[VerifyOtpSuccess](#VerifyOtpSuccess)

Success. Returns a JSON object as shown below. Refer `VerifyOtpSuccess` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "verify_mobile_link": true,
    "user": {
      "debug": {
        "source": "deadlock",
        "platform": "000000000000000000000001"
      },
      "gender": "male",
      "account_type": "user",
      "roles": [
        "Test-Role"
      ],
      "active": true,
      "profile_pic_url": "https://d2co8r51m5ca2d.cloudfront.net/inapp_banners/default_profile_img.png",
      "has_old_password_hash": false,
      "_id": "5e68af49cfa09bf7233022f1",
      "first_name": "Akash",
      "last_name": "Mane",
      "username": "akashmane_gofynd_com_10039",
      "phone_numbers": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "phone": "8652523958",
          "country_code": 91
        }
      ],
      "emails": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "email": "akashmane@gofynd.com"
        },
        {
          "active": true,
          "primary": false,
          "verified": true,
          "email": "akashmane@fynd.com"
        },
        {
          "active": true,
          "primary": false,
          "verified": true,
          "email": "akashmane@uniket.store"
        }
      ],
      "created_at": "2020-03-11T09:28:41.982Z",
      "updated_at": "2021-02-04T10:10:44.981Z"
    }
  }
}
```
</details>

</details>









---


#### sendOTPOnEmail
Send OTP on email




```swift
user.sendOTPOnEmail(platform: platform, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| platform | String? | no | ID of the application |  
| body | SendEmailOtpRequestSchema | yes | Request body |


Use this API to send an OTP to an email ID.

*Returned Response:*




[EmailOtpSuccess](#EmailOtpSuccess)

Success. Returns a JSON object as shown below. Refer `EmailOtpSuccess` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true
}
```
</details>









---


#### verifyEmailOTP
Verify OTP on email




```swift
user.verifyEmailOTP(platform: platform, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| platform | String? | no | ID of the application |  
| body | VerifyEmailOtpRequestSchema | yes | Request body |


Use this API to verify the OTP received on an email ID.

*Returned Response:*




[VerifyOtpSuccess](#VerifyOtpSuccess)

Success. Returns a JSON object as shown below. Refer `VerifyOtpSuccess` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "verify_mobile_link": true,
    "user": {
      "debug": {
        "source": "deadlock",
        "platform": "000000000000000000000001"
      },
      "gender": "male",
      "account_type": "user",
      "roles": [
        "Test-Role"
      ],
      "active": true,
      "profile_pic_url": "https://d2co8r51m5ca2d.cloudfront.net/inapp_banners/default_profile_img.png",
      "has_old_password_hash": false,
      "_id": "5e68af49cfa09bf7233022f1",
      "first_name": "Akash",
      "last_name": "Mane",
      "username": "akashmane_gofynd_com_10039",
      "phone_numbers": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "phone": "8652523958",
          "country_code": 91
        }
      ],
      "emails": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "email": "akashmane@gofynd.com"
        },
        {
          "active": true,
          "primary": false,
          "verified": true,
          "email": "akashmane@fynd.com"
        },
        {
          "active": true,
          "primary": false,
          "verified": true,
          "email": "akashmane@uniket.store"
        }
      ],
      "created_at": "2020-03-11T09:28:41.982Z",
      "updated_at": "2021-02-04T10:10:44.981Z"
    }
  }
}
```
</details>

</details>









---


#### getLoggedInUser
Get logged in user




```swift
user.getLoggedInUser() { (response, error) in
    // Use response
}
```






Use this API  to get the details of a logged in user.

*Returned Response:*




[UserObjectSchema](#UserObjectSchema)

Success. Returns a JSON object with user details. Refer `UserObjectSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "user": {
      "debug": {
        "source": "deadlock",
        "platform": "000000000000000000000001"
      },
      "gender": "male",
      "account_type": "user",
      "roles": [
        "Test-Role"
      ],
      "active": true,
      "profile_pic_url": "https://d2co8r51m5ca2d.cloudfront.net/inapp_banners/default_profile_img.png",
      "has_old_password_hash": false,
      "_id": "5e68af49cfa09bf7233022f1",
      "first_name": "Akash",
      "last_name": "Mane",
      "username": "akashmane_gofynd_com_10039",
      "phone_numbers": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "phone": "8652523958",
          "country_code": 91
        }
      ],
      "emails": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "email": "akashmane@gofynd.com"
        },
        {
          "active": true,
          "primary": false,
          "verified": true,
          "email": "akashmane@fynd.com"
        },
        {
          "active": true,
          "primary": false,
          "verified": true,
          "email": "akashmane@uniket.store"
        }
      ],
      "created_at": "2020-03-11T09:28:41.982Z",
      "updated_at": "2021-02-04T10:10:44.981Z"
    }
  }
}
```
</details>

</details>









---


#### getListOfActiveSessions
Get list of sessions




```swift
user.getListOfActiveSessions() { (response, error) in
    // Use response
}
```






Use this API to retrieve all active sessions of a user.

*Returned Response:*




[SessionListSuccess](#SessionListSuccess)

Success. Returns a JSON object containing an array of sessions. Refer `SessionListSuccess` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "sessions": [
    "session_1",
    "session_2"
  ]
}
```
</details>









---


#### getPlatformConfig
Get platform configurations




```swift
user.getPlatformConfig(name: name) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| name | String? | no | Name of the application, e.g. Fynd |  



Use this API to get all the platform configurations such as mobile image, desktop image, social logins, and all other text.

*Returned Response:*




[PlatformSchema](#PlatformSchema)

Success. Returns a JSON object containing the all the platform configurations. Refer `PlatformSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "active": true,
  "mobile_image": null,
  "desktop_image": null,
  "social": {
    "facebook": true,
    "google": true,
    "account_kit": true
  },
  "flash_card": {
    "text": "",
    "text_color": "#FFFFFF",
    "background_color": "#EF5350"
  },
  "register": true,
  "forgot_password": true,
  "login": {
    "password": true,
    "otp": true
  },
  "skip_captcha": false,
  "display": "Fynd",
  "subtext": "Login to Fynd",
  "name": "Fynd",
  "meta": {},
  "required_fields": {
    "email": {
      "is_required": false,
      "level": "hard"
    },
    "mobile": {
      "is_required": true,
      "level": "hard"
    }
  },
  "register_required_fields": {
    "email": {
      "is_required": false,
      "level": "hard"
    },
    "mobile": {
      "is_required": true,
      "level": "hard"
    }
  },
  "skip_login": false,
  "look_and_feel": {
    "background_color": "#F5F5F5",
    "card_position": "center"
  },
  "social_tokens": {
    "google": {
      "appId": "token_123"
    },
    "facebook": {
      "appId": "2033146826724884"
    },
    "account_kit": {
      "appId": "548529975557631"
    }
  },
  "_id": "5e04a5e5220bc15839ad9bc0",
  "created_at": "2019-12-26T12:21:57.878Z",
  "updated_at": "2020-08-13T14:31:09.878Z",
  "__v": 0
}
```
</details>









---


#### updateProfile
Edit Profile Details




```swift
user.updateProfile(platform: platform, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| platform | String? | no | ID of the application |  
| body | EditProfileRequestSchema | yes | Request body |


Use this API to update details in the user profile. Details can be first name, last name, gender, email, phone number, or profile picture.

*Returned Response:*




[ProfileEditSuccess](#ProfileEditSuccess)

Success. Check the example shown below or refer `LoginSuccess` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "user": {
      "debug": {
        "source": "deadlock",
        "platform": "000000000000000000000001"
      },
      "gender": "male",
      "account_type": "user",
      "roles": [
        "Test-Role"
      ],
      "active": true,
      "profile_pic_url": "https://d2co8r51m5ca2d.cloudfront.net/inapp_banners/default_profile_img.png",
      "has_old_password_hash": false,
      "_id": "5e68af49cfa09bf7233022f1",
      "first_name": "Akash",
      "last_name": "Mane",
      "username": "akashmane_gofynd_com_10039",
      "phone_numbers": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "phone": "8652523958",
          "country_code": 91
        }
      ],
      "emails": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "email": "akashmane@gofynd.com"
        },
        {
          "active": true,
          "primary": false,
          "verified": true,
          "email": "akashmane@fynd.com"
        },
        {
          "active": true,
          "primary": false,
          "verified": true,
          "email": "akashmane@uniket.store"
        }
      ],
      "created_at": "2020-03-11T09:28:41.982Z",
      "updated_at": "2021-02-04T10:10:44.981Z"
    }
  }
}
```
</details>

</details>









---


#### addMobileNumber
Add mobile number to profile




```swift
user.addMobileNumber(platform: platform, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| platform | String? | no | ID of the application |  
| body | EditMobileRequestSchema | yes | Request body |


Use this API to add a new mobile number to a profile.

*Returned Response:*




[VerifyMobileOTPSuccess](#VerifyMobileOTPSuccess)

Success. Check the example shown below or refer `VerifyMobileOTPSuccess` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "verify_mobile_link": true,
    "user": {
      "debug": {
        "source": "deadlock",
        "platform": "000000000000000000000001"
      },
      "gender": "male",
      "account_type": "user",
      "roles": [
        "Test-Role"
      ],
      "active": true,
      "profile_pic_url": "https://d2co8r51m5ca2d.cloudfront.net/inapp_banners/default_profile_img.png",
      "has_old_password_hash": false,
      "_id": "5e68af49cfa09bf7233022f1",
      "first_name": "Akash",
      "last_name": "Mane",
      "username": "akashmane_gofynd_com_10039",
      "phone_numbers": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "phone": "8652523958",
          "country_code": 91
        }
      ],
      "emails": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "email": "akashmane@gofynd.com"
        },
        {
          "active": true,
          "primary": false,
          "verified": true,
          "email": "akashmane@fynd.com"
        },
        {
          "active": true,
          "primary": false,
          "verified": true,
          "email": "akashmane@uniket.store"
        }
      ],
      "created_at": "2020-03-11T09:28:41.982Z",
      "updated_at": "2021-02-04T10:10:44.981Z"
    }
  }
}
```
</details>

</details>









---


#### deleteMobileNumber
Delete mobile number from profile




```swift
user.deleteMobileNumber(platform: platform, active: active, primary: primary, verified: verified, countryCode: countryCode, phone: phone) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| platform | String? | no | ID of the application |   
| active | Bool | yes | This is a boolean value to check if mobile number is active 1.True - Number is active 2. False - Number is inactive |   
| primary | Bool | yes | This is a boolean value to check if mobile number is primary number (main number) 1. True - Number is primary 2. False - Number is not primary |   
| verified | Bool | yes | This is a boolean value to check if mobile number is verified 1. True - Number is verified 2.False - Number is not verified yet |   
| countryCode | String | yes | Country code of the phone number, e.g. 91 |   
| phone | String | yes | Phone number |  



Use this API to delete a mobile number from a profile.

*Returned Response:*




[LoginSuccess](#LoginSuccess)

Success. Check the example shown below or refer `LoginSuccess` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "user": {
      "debug": {
        "source": "deadlock",
        "platform": "000000000000000000000001"
      },
      "gender": "male",
      "account_type": "user",
      "roles": [
        "Test-Role"
      ],
      "active": true,
      "profile_pic_url": "https://d2co8r51m5ca2d.cloudfront.net/inapp_banners/default_profile_img.png",
      "has_old_password_hash": false,
      "_id": "5e68af49cfa09bf7233022f1",
      "first_name": "Akash",
      "last_name": "Mane",
      "username": "akashmane_gofynd_com_10039",
      "phone_numbers": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "phone": "8652523958",
          "country_code": 91
        }
      ],
      "emails": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "email": "akashmane@gofynd.com"
        },
        {
          "active": true,
          "primary": false,
          "verified": true,
          "email": "akashmane@fynd.com"
        },
        {
          "active": true,
          "primary": false,
          "verified": true,
          "email": "akashmane@uniket.store"
        }
      ],
      "created_at": "2020-03-11T09:28:41.982Z",
      "updated_at": "2021-02-04T10:10:44.981Z"
    }
  }
}
```
</details>

</details>









---


#### setMobileNumberAsPrimary
Set mobile as primary




```swift
user.setMobileNumberAsPrimary(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | SendVerificationLinkMobileRequestSchema | yes | Request body |


Use this API to set a mobile number as primary. Primary number is a verified number used for all future communications.

*Returned Response:*




[LoginSuccess](#LoginSuccess)

Success. Check the example shown below or refer `LoginSuccess` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "user": {
      "debug": {
        "source": "deadlock",
        "platform": "000000000000000000000001"
      },
      "gender": "male",
      "account_type": "user",
      "roles": [
        "Test-Role"
      ],
      "active": true,
      "profile_pic_url": "https://d2co8r51m5ca2d.cloudfront.net/inapp_banners/default_profile_img.png",
      "has_old_password_hash": false,
      "_id": "5e68af49cfa09bf7233022f1",
      "first_name": "Akash",
      "last_name": "Mane",
      "username": "akashmane_gofynd_com_10039",
      "phone_numbers": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "phone": "8652523958",
          "country_code": 91
        }
      ],
      "emails": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "email": "akashmane@gofynd.com"
        },
        {
          "active": true,
          "primary": false,
          "verified": true,
          "email": "akashmane@fynd.com"
        },
        {
          "active": true,
          "primary": false,
          "verified": true,
          "email": "akashmane@uniket.store"
        }
      ],
      "created_at": "2020-03-11T09:28:41.982Z",
      "updated_at": "2021-02-04T10:10:44.981Z"
    }
  }
}
```
</details>

</details>









---


#### sendVerificationLinkToMobile
Send verification link to mobile




```swift
user.sendVerificationLinkToMobile(platform: platform, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| platform | String? | no | ID of the application |  
| body | SendVerificationLinkMobileRequestSchema | yes | Request body |


Use this API to send a verification link to a mobile number

*Returned Response:*




[SendMobileVerifyLinkSuccess](#SendMobileVerifyLinkSuccess)

Success. Check the example shown below or refer `SendMobileVerifyLinkSuccess` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "verify_mobile_link": true,
    "user": {
      "debug": {
        "source": "deadlock",
        "platform": "000000000000000000000001"
      },
      "gender": "male",
      "account_type": "user",
      "roles": [
        "Test-Role"
      ],
      "active": true,
      "profile_pic_url": "https://d2co8r51m5ca2d.cloudfront.net/inapp_banners/default_profile_img.png",
      "has_old_password_hash": false,
      "_id": "5e68af49cfa09bf7233022f1",
      "first_name": "Akash",
      "last_name": "Mane",
      "username": "akashmane_gofynd_com_10039",
      "phone_numbers": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "phone": "8652523958",
          "country_code": 91
        }
      ],
      "emails": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "email": "akashmane@gofynd.com"
        },
        {
          "active": true,
          "primary": false,
          "verified": true,
          "email": "akashmane@fynd.com"
        },
        {
          "active": true,
          "primary": false,
          "verified": true,
          "email": "akashmane@uniket.store"
        }
      ],
      "created_at": "2020-03-11T09:28:41.982Z",
      "updated_at": "2021-02-04T10:10:44.981Z"
    }
  }
}
```
</details>

</details>









---


#### addEmail
Add email to profile




```swift
user.addEmail(platform: platform, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| platform | String? | no | ID of the application |  
| body | EditEmailRequestSchema | yes | Request body |


Use this API to add a new email address to a profile

*Returned Response:*




[VerifyEmailOTPSuccess](#VerifyEmailOTPSuccess)

Success. Returns a JSON object with user details. Refer `VerifyEmailOTPSuccess` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "verify_email_link": true,
    "user": {
      "debug": {
        "source": "deadlock",
        "platform": "000000000000000000000001"
      },
      "gender": "male",
      "account_type": "user",
      "roles": [
        "Test-Role"
      ],
      "active": true,
      "profile_pic_url": "https://d2co8r51m5ca2d.cloudfront.net/inapp_banners/default_profile_img.png",
      "has_old_password_hash": false,
      "_id": "5e68af49cfa09bf7233022f1",
      "first_name": "Akash",
      "last_name": "Mane",
      "username": "akashmane_gofynd_com_10039",
      "phone_numbers": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "phone": "8652523958",
          "country_code": 91
        }
      ],
      "emails": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "email": "akashmane@gofynd.com"
        },
        {
          "active": true,
          "primary": false,
          "verified": true,
          "email": "akashmane@fynd.com"
        },
        {
          "active": true,
          "primary": false,
          "verified": true,
          "email": "akashmane@uniket.store"
        }
      ],
      "created_at": "2020-03-11T09:28:41.982Z",
      "updated_at": "2021-02-04T10:10:44.981Z"
    }
  }
}
```
</details>

</details>









---


#### deleteEmail
Delete email from profile




```swift
user.deleteEmail(platform: platform, active: active, primary: primary, verified: verified, email: email) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| platform | String? | no | ID of the application |   
| active | Bool | yes | This is a boolean value to check if email ID is active 1. True - Email ID is active 2.False - Email ID is inactive |   
| primary | Bool | yes | This is a boolean value to check if email ID is primary (main email ID) 1. True - Email ID is primary 2.False - Email ID is not primary |   
| verified | Bool | yes | This is a boolean value to check if email ID is verified 1. True - Email ID is verified 2.False - Email ID is not verified yet |   
| email | String | yes | The email ID to delete |  



Use this API to delete an email address from a profile

*Returned Response:*




[LoginSuccess](#LoginSuccess)

Success. Returns a JSON object with user details. Refer `LoginSuccess` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "user": {
      "debug": {
        "source": "deadlock",
        "platform": "000000000000000000000001"
      },
      "gender": "male",
      "account_type": "user",
      "roles": [
        "Test-Role"
      ],
      "active": true,
      "profile_pic_url": "https://d2co8r51m5ca2d.cloudfront.net/inapp_banners/default_profile_img.png",
      "has_old_password_hash": false,
      "_id": "5e68af49cfa09bf7233022f1",
      "first_name": "Akash",
      "last_name": "Mane",
      "username": "akashmane_gofynd_com_10039",
      "phone_numbers": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "phone": "8652523958",
          "country_code": 91
        }
      ],
      "emails": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "email": "akashmane@gofynd.com"
        },
        {
          "active": true,
          "primary": false,
          "verified": true,
          "email": "akashmane@fynd.com"
        },
        {
          "active": true,
          "primary": false,
          "verified": true,
          "email": "akashmane@uniket.store"
        }
      ],
      "created_at": "2020-03-11T09:28:41.982Z",
      "updated_at": "2021-02-04T10:10:44.981Z"
    }
  }
}
```
</details>

</details>









---


#### setEmailAsPrimary
Set email as primary




```swift
user.setEmailAsPrimary(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | EditEmailRequestSchema | yes | Request body |


Use this API to set an email address as primary. Primary email ID is a email address used for all future communications.

*Returned Response:*




[LoginSuccess](#LoginSuccess)

Success. Returns a JSON object with user details. Refer `LoginSuccess` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "user": {
      "debug": {
        "source": "deadlock",
        "platform": "000000000000000000000001"
      },
      "gender": "male",
      "account_type": "user",
      "roles": [
        "Test-Role"
      ],
      "active": true,
      "profile_pic_url": "https://d2co8r51m5ca2d.cloudfront.net/inapp_banners/default_profile_img.png",
      "has_old_password_hash": false,
      "_id": "5e68af49cfa09bf7233022f1",
      "first_name": "Akash",
      "last_name": "Mane",
      "username": "akashmane_gofynd_com_10039",
      "phone_numbers": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "phone": "8652523958",
          "country_code": 91
        }
      ],
      "emails": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "email": "akashmane@gofynd.com"
        },
        {
          "active": true,
          "primary": false,
          "verified": true,
          "email": "akashmane@fynd.com"
        },
        {
          "active": true,
          "primary": false,
          "verified": true,
          "email": "akashmane@uniket.store"
        }
      ],
      "created_at": "2020-03-11T09:28:41.982Z",
      "updated_at": "2021-02-04T10:10:44.981Z"
    }
  }
}
```
</details>

</details>









---


#### sendVerificationLinkToEmail
Send verification link to email




```swift
user.sendVerificationLinkToEmail(platform: platform, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| platform | String? | no | ID of the application |  
| body | EditEmailRequestSchema | yes | Request body |


Use this API to send verification link to an email address.

*Returned Response:*




[SendEmailVerifyLinkSuccess](#SendEmailVerifyLinkSuccess)

Request body must contain an email ID. Refer `EditEmailRequestSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---



### Schemas

 
 
 #### [BlockUserRequestSchema](#BlockUserRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | Bool? |  yes  |  |
 | userId | [String]? |  yes  |  |
 | reason | String? |  yes  |  |

---


 
 
 #### [EditEmailRequestSchema](#EditEmailRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String? |  yes  |  |

---


 
 
 #### [SendVerificationLinkMobileRequestSchema](#SendVerificationLinkMobileRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | verified | Bool? |  yes  |  |
 | active | Bool? |  yes  |  |
 | countryCode | String? |  yes  |  |
 | phone | String? |  yes  |  |
 | primary | Bool? |  yes  |  |

---


 
 
 #### [EditMobileRequestSchema](#EditMobileRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | countryCode | String? |  yes  |  |
 | phone | String? |  yes  |  |

---


 
 
 #### [EditProfileRequestSchema](#EditProfileRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | firstName | String? |  yes  |  |
 | lastName | String? |  yes  |  |
 | mobile | [EditProfileMobileSchema](#EditProfileMobileSchema)? |  yes  |  |
 | countryCode | String? |  yes  |  |
 | email | String? |  yes  |  |
 | gender | String? |  yes  |  |
 | dob | String? |  yes  |  |
 | profilePicUrl | String? |  yes  |  |
 | androidHash | String? |  yes  |  |
 | sender | String? |  yes  |  |
 | registerToken | String? |  yes  |  |

---


 
 
 #### [EditProfileMobileSchema](#EditProfileMobileSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | String? |  yes  |  |
 | countryCode | String? |  yes  |  |

---


 
 
 #### [SendEmailOtpRequestSchema](#SendEmailOtpRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String? |  yes  |  |
 | action | String? |  yes  |  |
 | token | String? |  yes  |  |
 | registerToken | String? |  yes  |  |

---


 
 
 #### [VerifyEmailOtpRequestSchema](#VerifyEmailOtpRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String? |  yes  |  |
 | action | String? |  yes  |  |
 | registerToken | String? |  yes  |  |
 | otp | String? |  yes  |  |

---


 
 
 #### [VerifyOtpRequestSchema](#VerifyOtpRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | requestId | String? |  yes  |  |
 | registerToken | String? |  yes  |  |
 | otp | String? |  yes  |  |

---


 
 
 #### [SendMobileOtpRequestSchema](#SendMobileOtpRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mobile | String? |  yes  |  |
 | countryCode | String? |  yes  |  |
 | action | String? |  yes  |  |
 | token | String? |  yes  |  |
 | androidHash | String? |  yes  |  |
 | force | String? |  yes  |  |
 | captchaCode | String? |  yes  |  |

---


 
 
 #### [UpdatePasswordRequestSchema](#UpdatePasswordRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | oldPassword | String? |  yes  |  |
 | newPassword | String? |  yes  |  |

---


 
 
 #### [FormRegisterRequestSchema](#FormRegisterRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | firstName | String? |  yes  |  |
 | lastName | String? |  yes  |  |
 | gender | String? |  yes  |  |
 | email | String? |  yes  |  |
 | password | String? |  yes  |  |
 | phone | [FormRegisterRequestSchemaPhone](#FormRegisterRequestSchemaPhone)? |  yes  |  |
 | registerToken | String? |  yes  |  |

---


 
 
 #### [TokenRequestBodySchema](#TokenRequestBodySchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | token | String? |  yes  |  |

---


 
 
 #### [ForgotPasswordRequestSchema](#ForgotPasswordRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String? |  yes  |  |
 | password | String? |  yes  |  |

---


 
 
 #### [CodeRequestBodySchema](#CodeRequestBodySchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String? |  yes  |  |

---


 
 
 #### [SendResetPasswordEmailRequestSchema](#SendResetPasswordEmailRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String? |  yes  |  |
 | captchaCode | String? |  yes  |  |

---


 
 
 #### [PasswordLoginRequestSchema](#PasswordLoginRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | captchaCode | String? |  yes  |  |
 | password | String? |  yes  |  |
 | username | String? |  yes  |  |

---


 
 
 #### [SendOtpRequestSchema](#SendOtpRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | countryCode | String? |  yes  |  |
 | captchaCode | String? |  yes  |  |
 | mobile | String? |  yes  |  |

---


 
 
 #### [OAuthRequestSchema](#OAuthRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isSignedIn | Bool? |  yes  |  |
 | oauth2 | [OAuthRequestSchemaOauth2](#OAuthRequestSchemaOauth2)? |  yes  |  |
 | profile | [OAuthRequestSchemaProfile](#OAuthRequestSchemaProfile)? |  yes  |  |

---


 
 
 #### [OAuthRequestAppleSchema](#OAuthRequestAppleSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | userIdentifier | String? |  yes  |  |
 | oauth | [OAuthRequestAppleSchemaOauth](#OAuthRequestAppleSchemaOauth)? |  yes  |  |
 | profile | [OAuthRequestAppleSchemaProfile](#OAuthRequestAppleSchemaProfile)? |  yes  |  |

---


 
 
 #### [UserObjectSchema](#UserObjectSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [UserSchema](#UserSchema)? |  yes  |  |

---


 
 
 #### [AuthSuccess](#AuthSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | registerToken | String? |  yes  |  |
 | userExists | Bool? |  yes  |  |
 | user | [UserSchema](#UserSchema)? |  yes  |  |

---


 
 
 #### [SendOtpResponse](#SendOtpResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | resendTimer | Int? |  yes  |  |
 | resendToken | String? |  yes  |  |
 | success | Bool? |  yes  |  |
 | requestId | String? |  yes  |  |
 | message | String? |  yes  |  |
 | mobile | String? |  yes  |  |
 | countryCode | String? |  yes  |  |
 | email | String? |  yes  |  |
 | resendEmailToken | String? |  yes  |  |
 | registerToken | String? |  yes  |  |
 | verifyEmailOtp | Bool? |  yes  |  |
 | verifyMobileOtp | Bool? |  yes  |  |
 | userExists | Bool? |  yes  |  |

---


 
 
 #### [ProfileEditSuccess](#ProfileEditSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [UserSchema](#UserSchema)? |  yes  |  |
 | registerToken | String? |  yes  |  |
 | resendEmailToken | String? |  yes  |  |
 | userExists | Bool? |  yes  |  |
 | verifyEmailLink | Bool? |  yes  |  |
 | verifyEmailOtp | Bool? |  yes  |  |
 | verifyMobileOtp | Bool? |  yes  |  |
 | email | String? |  yes  |  |
 | requestId | String? |  yes  |  |

---


 
 
 #### [LoginSuccess](#LoginSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [UserSchema](#UserSchema)? |  yes  |  |
 | requestId | String? |  yes  |  |
 | registerToken | String? |  yes  |  |

---


 
 
 #### [VerifyOtpSuccess](#VerifyOtpSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [UserSchema](#UserSchema)? |  yes  |  |
 | userExists | Bool? |  yes  |  |
 | registerToken | String? |  yes  |  |

---


 
 
 #### [ResetPasswordSuccess](#ResetPasswordSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String? |  yes  |  |

---


 
 
 #### [RegisterFormSuccess](#RegisterFormSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String? |  yes  |  |
 | resendTimer | Int? |  yes  |  |
 | resendToken | String? |  yes  |  |
 | resendEmailToken | String? |  yes  |  |
 | registerToken | String? |  yes  |  |
 | success | Bool? |  yes  |  |
 | requestId | String? |  yes  |  |
 | message | String? |  yes  |  |
 | mobile | String? |  yes  |  |
 | countryCode | String? |  yes  |  |
 | verifyEmailOtp | Bool? |  yes  |  |
 | verifyMobileOtp | Bool? |  yes  |  |
 | userExists | Bool? |  yes  |  |

---


 
 
 #### [VerifyEmailSuccess](#VerifyEmailSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [HasPasswordSuccess](#HasPasswordSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | result | Bool? |  yes  |  |

---


 
 
 #### [LogoutSuccess](#LogoutSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | logout | Bool? |  yes  |  |

---


 
 
 #### [BlockUserSuccess](#BlockUserSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |

---


 
 
 #### [OtpSuccess](#OtpSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | resendTimer | Int? |  yes  |  |
 | resendToken | String? |  yes  |  |
 | registerToken | String? |  yes  |  |
 | success | Bool? |  yes  |  |
 | requestId | String? |  yes  |  |
 | message | String? |  yes  |  |
 | mobile | String? |  yes  |  |
 | countryCode | String? |  yes  |  |

---


 
 
 #### [EmailOtpSuccess](#EmailOtpSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |

---


 
 
 #### [SessionListSuccess](#SessionListSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sessions | [String]? |  yes  |  |

---


 
 
 #### [VerifyMobileOTPSuccess](#VerifyMobileOTPSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [UserSchema](#UserSchema)? |  yes  |  |
 | verifyMobileLink | Bool? |  yes  |  |

---


 
 
 #### [VerifyEmailOTPSuccess](#VerifyEmailOTPSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [UserSchema](#UserSchema)? |  yes  |  |
 | verifyEmailLink | Bool? |  yes  |  |

---


 
 
 #### [SendMobileVerifyLinkSuccess](#SendMobileVerifyLinkSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | verifyMobileLink | Bool? |  yes  |  |

---


 
 
 #### [SendEmailVerifyLinkSuccess](#SendEmailVerifyLinkSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | verifyEmailLink | Bool? |  yes  |  |

---


 
 
 #### [UserSearchResponseSchema](#UserSearchResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | users | [[UserSchema](#UserSchema)]? |  yes  |  |

---


 
 
 #### [CustomerListResponseSchema](#CustomerListResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[UserSchema](#UserSchema)]? |  yes  |  |
 | page | [PaginationSchema](#PaginationSchema)? |  yes  |  |

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


 
 
 #### [SessionListResponseSchema](#SessionListResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [String]? |  yes  |  |

---


 
 
 #### [SessionDeleteResponseSchema](#SessionDeleteResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [String]? |  yes  |  |

---


 
 
 #### [UnauthorizedSchema](#UnauthorizedSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [UnauthenticatedSchema](#UnauthenticatedSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | authenticated | Bool? |  yes  |  |

---


 
 
 #### [NotFoundSchema](#NotFoundSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [AuthenticationInternalServerErrorSchema](#AuthenticationInternalServerErrorSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [AuthenticationApiErrorSchema](#AuthenticationApiErrorSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [ProfileEditSuccessSchema](#ProfileEditSuccessSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String? |  yes  |  |
 | verifyEmailOtp | Bool? |  yes  |  |
 | verifyEmailLink | Bool? |  yes  |  |
 | verifyMobileOtp | Bool? |  yes  |  |
 | user | String? |  yes  |  |
 | registerToken | String? |  yes  |  |
 | userExists | Bool? |  yes  |  |

---


 
 
 #### [FormRegisterRequestSchemaPhone](#FormRegisterRequestSchemaPhone)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | countryCode | String? |  yes  |  |
 | mobile | String? |  yes  |  |

---


 
 
 #### [OAuthRequestSchemaOauth2](#OAuthRequestSchemaOauth2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | accessToken | String? |  yes  |  |
 | expiry | Int? |  yes  |  |
 | refreshToken | String? |  yes  |  |

---


 
 
 #### [OAuthRequestSchemaProfile](#OAuthRequestSchemaProfile)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | lastName | String? |  yes  |  |
 | image | String? |  yes  |  |
 | id | String? |  yes  |  |
 | email | String? |  yes  |  |
 | fullName | String? |  yes  |  |
 | firstName | String? |  yes  |  |

---


 
 
 #### [OAuthRequestAppleSchemaOauth](#OAuthRequestAppleSchemaOauth)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | identityToken | String? |  yes  |  |

---


 
 
 #### [OAuthRequestAppleSchemaProfile](#OAuthRequestAppleSchemaProfile)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | lastName | String? |  yes  |  |
 | fullName | String? |  yes  |  |
 | firstName | String? |  yes  |  |

---


 
 
 #### [AuthSuccessUser](#AuthSuccessUser)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | firstName | String? |  yes  |  |
 | lastName | String? |  yes  |  |
 | debug | [AuthSuccessUserDebug](#AuthSuccessUserDebug)? |  yes  |  |
 | active | Bool? |  yes  |  |
 | emails | [AuthSuccessUserEmails](#AuthSuccessUserEmails)? |  yes  |  |

---


 
 
 #### [AuthSuccessUserDebug](#AuthSuccessUserDebug)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | platform | String? |  yes  |  |

---


 
 
 #### [AuthSuccessUserEmails](#AuthSuccessUserEmails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String? |  yes  |  |
 | verified | Bool? |  yes  |  |
 | primary | Bool? |  yes  |  |
 | active | Bool? |  yes  |  |

---


 
 
 #### [CreateUserRequestSchema](#CreateUserRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phoneNumber | String |  no  |  |
 | email | String? |  yes  |  |
 | firstName | String? |  yes  |  |
 | lastName | String? |  yes  |  |
 | gender | String? |  yes  |  |
 | username | String |  no  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [CreateUserResponseSchema](#CreateUserResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [UserSchema](#UserSchema)? |  yes  |  |

---


 
 
 #### [CreateUserSessionRequestSchema](#CreateUserSessionRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domain | String? |  yes  |  |
 | maxAge | Double? |  yes  |  |
 | userId | String? |  yes  |  |

---


 
 
 #### [CreateUserSessionResponseSchema](#CreateUserSessionResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domain | String? |  yes  |  |
 | maxAge | Double? |  yes  |  |
 | secure | Bool? |  yes  |  |
 | httpOnly | Bool? |  yes  |  |
 | cookie | [String: Any]? |  yes  |  |

---


 
 
 #### [PlatformSchema](#PlatformSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  |  |
 | lookAndFeel | [LookAndFeel](#LookAndFeel)? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | active | Bool? |  yes  |  |
 | forgotPassword | Bool? |  yes  |  |
 | login | [Login](#Login)? |  yes  |  |
 | skipCaptcha | Bool? |  yes  |  |
 | name | String? |  yes  |  |
 | meta | [MetaSchema](#MetaSchema)? |  yes  |  |
 | id | String? |  yes  |  |
 | social | [Social](#Social)? |  yes  |  |
 | requiredFields | [RequiredFields](#RequiredFields)? |  yes  |  |
 | registerRequiredFields | [RegisterRequiredFields](#RegisterRequiredFields)? |  yes  |  |
 | skipLogin | Bool? |  yes  |  |
 | flashCard | [FlashCard](#FlashCard)? |  yes  |  |
 | subtext | String? |  yes  |  |
 | socialTokens | [SocialTokens](#SocialTokens)? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | register | Bool? |  yes  |  |
 | mobileImage | String? |  yes  |  |
 | desktopImage | String? |  yes  |  |

---


 
 
 #### [LookAndFeel](#LookAndFeel)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cardPosition | String? |  yes  |  |
 | backgroundColor | String? |  yes  |  |

---


 
 
 #### [Login](#Login)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | password | Bool? |  yes  |  |
 | otp | Bool? |  yes  |  |

---


 
 
 #### [MetaSchema](#MetaSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fyndDefault | Bool? |  yes  |  |

---


 
 
 #### [Social](#Social)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | accountKit | Bool? |  yes  |  |
 | facebook | Bool? |  yes  |  |
 | google | Bool? |  yes  |  |
 | apple | Bool? |  yes  |  |

---


 
 
 #### [RequiredFields](#RequiredFields)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | [PlatformEmail](#PlatformEmail)? |  yes  |  |
 | mobile | [PlatformMobile](#PlatformMobile)? |  yes  |  |

---


 
 
 #### [PlatformEmail](#PlatformEmail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isRequired | Bool? |  yes  |  |
 | level | String? |  yes  |  |

---


 
 
 #### [PlatformMobile](#PlatformMobile)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isRequired | Bool? |  yes  |  |
 | level | String? |  yes  |  |

---


 
 
 #### [RegisterRequiredFields](#RegisterRequiredFields)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | [RegisterRequiredFieldsEmail](#RegisterRequiredFieldsEmail)? |  yes  |  |
 | mobile | [RegisterRequiredFieldsMobile](#RegisterRequiredFieldsMobile)? |  yes  |  |

---


 
 
 #### [RegisterRequiredFieldsEmail](#RegisterRequiredFieldsEmail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isRequired | Bool? |  yes  |  |
 | level | String? |  yes  |  |

---


 
 
 #### [RegisterRequiredFieldsMobile](#RegisterRequiredFieldsMobile)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isRequired | Bool? |  yes  |  |
 | level | String? |  yes  |  |

---


 
 
 #### [FlashCard](#FlashCard)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | text | String? |  yes  |  |
 | textColor | String? |  yes  |  |
 | backgroundColor | String? |  yes  |  |

---


 
 
 #### [SocialTokens](#SocialTokens)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | facebook | [Facebook](#Facebook)? |  yes  |  |
 | accountKit | [Accountkit](#Accountkit)? |  yes  |  |
 | google | [Google](#Google)? |  yes  |  |

---


 
 
 #### [Facebook](#Facebook)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | String? |  yes  |  |

---


 
 
 #### [Accountkit](#Accountkit)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | String? |  yes  |  |

---


 
 
 #### [Google](#Google)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | String? |  yes  |  |

---


 
 
 #### [UpdateUserRequestSchema](#UpdateUserRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | firstName | String? |  yes  |  |
 | lastName | String? |  yes  |  |
 | gender | String? |  yes  |  |
 | externalId | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [UserSchema](#UserSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | applicationId | String? |  yes  |  |
 | userId | String? |  yes  |  |
 | firstName | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | lastName | String? |  yes  |  |
 | phoneNumbers | [[PhoneNumber](#PhoneNumber)]? |  yes  |  |
 | emails | [[Email](#Email)]? |  yes  |  |
 | gender | String? |  yes  |  |
 | dob | String? |  yes  |  |
 | active | Bool? |  yes  |  |
 | profilePicUrl | String? |  yes  |  |
 | username | String? |  yes  |  |
 | accountType | String? |  yes  |  |
 | debug | [Debug](#Debug)? |  yes  |  |
 | hasOldPasswordHash | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |

---


 
 
 #### [PhoneNumber](#PhoneNumber)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool? |  yes  |  |
 | primary | Bool? |  yes  |  |
 | verified | Bool? |  yes  |  |
 | phone | String? |  yes  |  |
 | countryCode | Int? |  yes  |  |

---


 
 
 #### [Email](#Email)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | primary | Bool? |  yes  |  |
 | verified | Bool? |  yes  |  |
 | email | String? |  yes  |  |
 | active | Bool? |  yes  |  |

---


 
 
 #### [Debug](#Debug)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | source | String? |  yes  |  |
 | platform | String? |  yes  |  |

---



