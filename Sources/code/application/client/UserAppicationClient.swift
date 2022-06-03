import Foundation

public extension ApplicationClient {
    class User {
        var config: ApplicationConfig
        var relativeUrls = [String: String]()

        init(config: ApplicationConfig) {
            self.config = config
            var ulrs = [String: String]()

            ulrs["loginWithFacebook"] = config.domain.appendAsPath("/service/application/user/authentication/v1.0/login/facebook-token")

            ulrs["loginWithGoogle"] = config.domain.appendAsPath("/service/application/user/authentication/v1.0/login/google-token")

            ulrs["loginWithGoogleAndroid"] = config.domain.appendAsPath("/service/application/user/authentication/v1.0/login/google-android")

            ulrs["loginWithGoogleIOS"] = config.domain.appendAsPath("/service/application/user/authentication/v1.0/login/google-ios")

            ulrs["loginWithAppleIOS"] = config.domain.appendAsPath("/service/application/user/authentication/v1.0/login/apple-ios")

            ulrs["loginWithOTP"] = config.domain.appendAsPath("/service/application/user/authentication/v1.0/login/otp")

            ulrs["loginWithEmailAndPassword"] = config.domain.appendAsPath("/service/application/user/authentication/v1.0/login/password")

            ulrs["sendResetPasswordEmail"] = config.domain.appendAsPath("/service/application/user/authentication/v1.0/login/password/reset")

            ulrs["forgotPassword"] = config.domain.appendAsPath("/service/application/user/authentication/v1.0/login/password/reset/forgot")

            ulrs["sendResetToken"] = config.domain.appendAsPath("/service/application/user/authentication/v1.0/login/password/reset/token")

            ulrs["loginWithToken"] = config.domain.appendAsPath("/service/application/user/authentication/v1.0/login/token")

            ulrs["registerWithForm"] = config.domain.appendAsPath("/service/application/user/authentication/v1.0/register/form")

            ulrs["verifyEmail"] = config.domain.appendAsPath("/service/application/user/authentication/v1.0/verify/email")

            ulrs["verifyMobile"] = config.domain.appendAsPath("/service/application/user/authentication/v1.0/verify/mobile")

            ulrs["hasPassword"] = config.domain.appendAsPath("/service/application/user/authentication/v1.0/has-password")

            ulrs["updatePassword"] = config.domain.appendAsPath("/service/application/user/authentication/v1.0/password")

            ulrs["logout"] = config.domain.appendAsPath("/service/application/user/authentication/v1.0/logout")

            ulrs["sendOTPOnMobile"] = config.domain.appendAsPath("/service/application/user/authentication/v1.0/otp/mobile/send")

            ulrs["verifyMobileOTP"] = config.domain.appendAsPath("/service/application/user/authentication/v1.0/otp/mobile/verify")

            ulrs["sendOTPOnEmail"] = config.domain.appendAsPath("/service/application/user/authentication/v1.0/otp/email/send")

            ulrs["verifyEmailOTP"] = config.domain.appendAsPath("/service/application/user/authentication/v1.0/otp/email/verify")

            ulrs["getLoggedInUser"] = config.domain.appendAsPath("/service/application/user/authentication/v1.0/session")

            ulrs["getListOfActiveSessions"] = config.domain.appendAsPath("/service/application/user/authentication/v1.0/sessions")

            ulrs["getPlatformConfig"] = config.domain.appendAsPath("/service/application/user/platform/v1.0/config")

            ulrs["updateProfile"] = config.domain.appendAsPath("/service/application/user/profile/v1.0/detail")

            ulrs["addMobileNumber"] = config.domain.appendAsPath("/service/application/user/profile/v1.0/mobile")

            ulrs["deleteMobileNumber"] = config.domain.appendAsPath("/service/application/user/profile/v1.0/mobile")

            ulrs["setMobileNumberAsPrimary"] = config.domain.appendAsPath("/service/application/user/profile/v1.0/mobile/primary")

            ulrs["sendVerificationLinkToMobile"] = config.domain.appendAsPath("/service/application/user/profile/v1.0/mobile/link/send")

            ulrs["addEmail"] = config.domain.appendAsPath("/service/application/user/profile/v1.0/email")

            ulrs["deleteEmail"] = config.domain.appendAsPath("/service/application/user/profile/v1.0/email")

            ulrs["setEmailAsPrimary"] = config.domain.appendAsPath("/service/application/user/profile/v1.0/email/primary")

            ulrs["sendVerificationLinkToEmail"] = config.domain.appendAsPath("/service/application/user/profile/v1.0/email/link/send")

            self.relativeUrls = ulrs
        }

        public func update(updatedUrl: [String: String]) {
            for (key, value) in updatedUrl {
                self.relativeUrls[key] = value
            }
        }

        /**
         *
         * Summary: Login or Register using Facebook
         * Description: Use this API to login or register using Facebook credentials.
         **/
        public func loginWithFacebook(
            platform: String?,
            body: OAuthRequestSchema,
            onResponse: @escaping (_ response: AuthSuccess?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = platform {
                xQuery["platform"] = value
            }

            let fullUrl = relativeUrls["loginWithFacebook"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: fullUrl,
                query: xQuery,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(AuthSuccess.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Login or Register using Google
         * Description: Use this API to login or register using Google Account credentials.
         **/
        public func loginWithGoogle(
            platform: String?,
            body: OAuthRequestSchema,
            onResponse: @escaping (_ response: AuthSuccess?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = platform {
                xQuery["platform"] = value
            }

            let fullUrl = relativeUrls["loginWithGoogle"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: fullUrl,
                query: xQuery,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(AuthSuccess.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Login or Register using Google on Android
         * Description: Use this API to login or register in Android app using Google Account credentials.
         **/
        public func loginWithGoogleAndroid(
            platform: String?,
            body: OAuthRequestSchema,
            onResponse: @escaping (_ response: AuthSuccess?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = platform {
                xQuery["platform"] = value
            }

            let fullUrl = relativeUrls["loginWithGoogleAndroid"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: fullUrl,
                query: xQuery,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(AuthSuccess.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Login or Register using Google on iOS
         * Description: Use this API to login or register in iOS app using Google Account credentials.
         **/
        public func loginWithGoogleIOS(
            platform: String?,
            body: OAuthRequestSchema,
            onResponse: @escaping (_ response: AuthSuccess?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = platform {
                xQuery["platform"] = value
            }

            let fullUrl = relativeUrls["loginWithGoogleIOS"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: fullUrl,
                query: xQuery,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(AuthSuccess.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Login or Register using Apple on iOS
         * Description: Use this API to login or register in iOS app using Apple Account credentials.
         **/
        public func loginWithAppleIOS(
            platform: String?,
            body: OAuthRequestAppleSchema,
            onResponse: @escaping (_ response: AuthSuccess?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = platform {
                xQuery["platform"] = value
            }

            let fullUrl = relativeUrls["loginWithAppleIOS"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: fullUrl,
                query: xQuery,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(AuthSuccess.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Login or Register with OTP
         * Description: Use this API to login or register with a One-time Password (OTP) sent via Email or SMS.
         **/
        public func loginWithOTP(
            platform: String?,
            body: SendOtpRequestSchema,
            onResponse: @escaping (_ response: SendOtpResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = platform {
                xQuery["platform"] = value
            }

            let fullUrl = relativeUrls["loginWithOTP"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: fullUrl,
                query: xQuery,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(SendOtpResponse.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Login or Register with password
         * Description: Use this API to login or register using an email address and password.
         **/
        public func loginWithEmailAndPassword(
            body: PasswordLoginRequestSchema,
            onResponse: @escaping (_ response: LoginSuccess?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["loginWithEmailAndPassword"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(LoginSuccess.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Reset Password
         * Description: Use this API to reset a password using the link sent on email.
         **/
        public func sendResetPasswordEmail(
            platform: String?,
            body: SendResetPasswordEmailRequestSchema,
            onResponse: @escaping (_ response: ResetPasswordSuccess?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = platform {
                xQuery["platform"] = value
            }

            let fullUrl = relativeUrls["sendResetPasswordEmail"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: fullUrl,
                query: xQuery,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(ResetPasswordSuccess.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Forgot Password
         * Description: Use this API to reset a password using the code sent on email or SMS.
         **/
        public func forgotPassword(
            body: ForgotPasswordRequestSchema,
            onResponse: @escaping (_ response: LoginSuccess?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["forgotPassword"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(LoginSuccess.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Reset Password using token
         * Description: Use this API to send code to reset password.
         **/
        public func sendResetToken(
            body: CodeRequestBodySchema,
            onResponse: @escaping (_ response: ResetPasswordSuccess?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["sendResetToken"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(ResetPasswordSuccess.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Login or Register with token
         * Description: Use this API to login or register using a token for authentication.
         **/
        public func loginWithToken(
            body: TokenRequestBodySchema,
            onResponse: @escaping (_ response: LoginSuccess?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["loginWithToken"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(LoginSuccess.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Registration using a form
         * Description: Use this API to perform user registration by sending form data in the request body.
         **/
        public func registerWithForm(
            platform: String?,
            body: FormRegisterRequestSchema,
            onResponse: @escaping (_ response: RegisterFormSuccess?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = platform {
                xQuery["platform"] = value
            }

            let fullUrl = relativeUrls["registerWithForm"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: fullUrl,
                query: xQuery,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(RegisterFormSuccess.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Verify email
         * Description: Use this API to send a verification code to verify an email.
         **/
        public func verifyEmail(
            body: CodeRequestBodySchema,
            onResponse: @escaping (_ response: VerifyEmailSuccess?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["verifyEmail"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(VerifyEmailSuccess.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Verify mobile
         * Description: Use this API to send a verification code to verify a mobile number.
         **/
        public func verifyMobile(
            body: CodeRequestBodySchema,
            onResponse: @escaping (_ response: VerifyEmailSuccess?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["verifyMobile"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(VerifyEmailSuccess.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Check password
         * Description: Use this API to check if user has created a password for login.
         **/
        public func hasPassword(
            onResponse: @escaping (_ response: HasPasswordSuccess?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["hasPassword"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: nil,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(HasPasswordSuccess.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Update user password
         * Description: Use this API to update the password.
         **/
        public func updatePassword(
            body: UpdatePasswordRequestSchema,
            onResponse: @escaping (_ response: VerifyEmailSuccess?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["updatePassword"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(VerifyEmailSuccess.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Logs out currently logged in user
         * Description: Use this API to check to logout a user from the app.
         **/
        public func logout(
            onResponse: @escaping (_ response: LogoutSuccess?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["logout"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: nil,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(LogoutSuccess.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Send OTP on mobile
         * Description: Use this API to send an OTP to a mobile number.
         **/
        public func sendOTPOnMobile(
            platform: String?,
            body: SendMobileOtpRequestSchema,
            onResponse: @escaping (_ response: OtpSuccess?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = platform {
                xQuery["platform"] = value
            }

            let fullUrl = relativeUrls["sendOTPOnMobile"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: fullUrl,
                query: xQuery,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(OtpSuccess.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Verify OTP on mobile
         * Description: Use this API to verify the OTP received on a mobile number.
         **/
        public func verifyMobileOTP(
            platform: String?,
            body: VerifyOtpRequestSchema,
            onResponse: @escaping (_ response: VerifyOtpSuccess?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = platform {
                xQuery["platform"] = value
            }

            let fullUrl = relativeUrls["verifyMobileOTP"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: fullUrl,
                query: xQuery,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(VerifyOtpSuccess.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Send OTP on email
         * Description: Use this API to send an OTP to an email ID.
         **/
        public func sendOTPOnEmail(
            platform: String?,
            body: SendEmailOtpRequestSchema,
            onResponse: @escaping (_ response: EmailOtpSuccess?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = platform {
                xQuery["platform"] = value
            }

            let fullUrl = relativeUrls["sendOTPOnEmail"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: fullUrl,
                query: xQuery,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(EmailOtpSuccess.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Verify OTP on email
         * Description: Use this API to verify the OTP received on an email ID.
         **/
        public func verifyEmailOTP(
            platform: String?,
            body: VerifyEmailOtpRequestSchema,
            onResponse: @escaping (_ response: VerifyOtpSuccess?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = platform {
                xQuery["platform"] = value
            }

            let fullUrl = relativeUrls["verifyEmailOTP"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: fullUrl,
                query: xQuery,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(VerifyOtpSuccess.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Get logged in user
         * Description: Use this API  to get the details of a logged in user.
         **/
        public func getLoggedInUser(
            onResponse: @escaping (_ response: UserObjectSchema?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["getLoggedInUser"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: nil,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(UserObjectSchema.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Get list of sessions
         * Description: Use this API to retrieve all active sessions of a user.
         **/
        public func getListOfActiveSessions(
            onResponse: @escaping (_ response: SessionListSuccess?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["getListOfActiveSessions"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: nil,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(SessionListSuccess.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Get platform configurations
         * Description: Use this API to get all the platform configurations such as mobile image, desktop image, social logins, and all other text.
         **/
        public func getPlatformConfig(
            name: String?,

            onResponse: @escaping (_ response: PlatformSchema?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = name {
                xQuery["name"] = value
            }

            let fullUrl = relativeUrls["getPlatformConfig"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
                query: xQuery,
                extraHeaders: [],
                body: nil,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(PlatformSchema.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Edit Profile Details
         * Description: Use this API to update details in the user profile. Details can be first name, last name, gender, email, phone number, or profile picture.
         **/
        public func updateProfile(
            platform: String?,
            body: EditProfileRequestSchema,
            onResponse: @escaping (_ response: ProfileEditSuccess?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = platform {
                xQuery["platform"] = value
            }

            let fullUrl = relativeUrls["updateProfile"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: fullUrl,
                query: xQuery,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(ProfileEditSuccess.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Add mobile number to profile
         * Description: Use this API to add a new mobile number to a profile.
         **/
        public func addMobileNumber(
            platform: String?,
            body: EditMobileRequestSchema,
            onResponse: @escaping (_ response: VerifyMobileOTPSuccess?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = platform {
                xQuery["platform"] = value
            }

            let fullUrl = relativeUrls["addMobileNumber"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: fullUrl,
                query: xQuery,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(VerifyMobileOTPSuccess.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Delete mobile number from profile
         * Description: Use this API to delete a mobile number from a profile.
         **/
        public func deleteMobileNumber(
            platform: String?,
            active: Bool,
            primary: Bool,
            verified: Bool,
            countryCode: String,
            phone: String,

            onResponse: @escaping (_ response: LoginSuccess?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = platform {
                xQuery["platform"] = value
            }

            xQuery["active"] = active

            xQuery["primary"] = primary

            xQuery["verified"] = verified

            xQuery["country_code"] = countryCode

            xQuery["phone"] = phone

            let fullUrl = relativeUrls["deleteMobileNumber"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "delete",
                url: fullUrl,
                query: xQuery,
                extraHeaders: [],
                body: nil,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(LoginSuccess.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Set mobile as primary
         * Description: Use this API to set a mobile number as primary. Primary number is a verified number used for all future communications.
         **/
        public func setMobileNumberAsPrimary(
            body: SendVerificationLinkMobileRequestSchema,
            onResponse: @escaping (_ response: LoginSuccess?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["setMobileNumberAsPrimary"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(LoginSuccess.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Send verification link to mobile
         * Description: Use this API to send a verification link to a mobile number
         **/
        public func sendVerificationLinkToMobile(
            platform: String?,
            body: SendVerificationLinkMobileRequestSchema,
            onResponse: @escaping (_ response: SendMobileVerifyLinkSuccess?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = platform {
                xQuery["platform"] = value
            }

            let fullUrl = relativeUrls["sendVerificationLinkToMobile"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: fullUrl,
                query: xQuery,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(SendMobileVerifyLinkSuccess.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Add email to profile
         * Description: Use this API to add a new email address to a profile
         **/
        public func addEmail(
            platform: String?,
            body: EditEmailRequestSchema,
            onResponse: @escaping (_ response: VerifyEmailOTPSuccess?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = platform {
                xQuery["platform"] = value
            }

            let fullUrl = relativeUrls["addEmail"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: fullUrl,
                query: xQuery,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(VerifyEmailOTPSuccess.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Delete email from profile
         * Description: Use this API to delete an email address from a profile
         **/
        public func deleteEmail(
            platform: String?,
            active: Bool,
            primary: Bool,
            verified: Bool,
            email: String,

            onResponse: @escaping (_ response: LoginSuccess?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = platform {
                xQuery["platform"] = value
            }

            xQuery["active"] = active

            xQuery["primary"] = primary

            xQuery["verified"] = verified

            xQuery["email"] = email

            let fullUrl = relativeUrls["deleteEmail"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "delete",
                url: fullUrl,
                query: xQuery,
                extraHeaders: [],
                body: nil,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(LoginSuccess.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Set email as primary
         * Description: Use this API to set an email address as primary. Primary email ID is a email address used for all future communications.
         **/
        public func setEmailAsPrimary(
            body: EditEmailRequestSchema,
            onResponse: @escaping (_ response: LoginSuccess?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["setEmailAsPrimary"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(LoginSuccess.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Send verification link to email
         * Description: Use this API to send verification link to an email address.
         **/
        public func sendVerificationLinkToEmail(
            platform: String?,
            body: EditEmailRequestSchema,
            onResponse: @escaping (_ response: SendEmailVerifyLinkSuccess?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = platform {
                xQuery["platform"] = value
            }

            let fullUrl = relativeUrls["sendVerificationLinkToEmail"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: fullUrl,
                query: xQuery,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(SendEmailVerifyLinkSuccess.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }
    }
}
