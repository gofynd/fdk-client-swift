

import Foundation
public extension PlatformClient {
    /*
         Model: LandingPageFeature
         Used By: Configuration
     */

    class LandingPageFeature: Codable {
        public var launchPage: LaunchPage?

        public var continueAsGuest: Bool?

        public var loginBtnText: String?

        public var showDomainTextbox: Bool?

        public var showRegisterBtn: Bool?

        public enum CodingKeys: String, CodingKey {
            case launchPage = "launch_page"

            case continueAsGuest = "continue_as_guest"

            case loginBtnText = "login_btn_text"

            case showDomainTextbox = "show_domain_textbox"

            case showRegisterBtn = "show_register_btn"
        }

        public init(continueAsGuest: Bool? = nil, launchPage: LaunchPage? = nil, loginBtnText: String? = nil, showDomainTextbox: Bool? = nil, showRegisterBtn: Bool? = nil) {
            self.launchPage = launchPage

            self.continueAsGuest = continueAsGuest

            self.loginBtnText = loginBtnText

            self.showDomainTextbox = showDomainTextbox

            self.showRegisterBtn = showRegisterBtn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                launchPage = try container.decode(LaunchPage.self, forKey: .launchPage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                continueAsGuest = try container.decode(Bool.self, forKey: .continueAsGuest)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                loginBtnText = try container.decode(String.self, forKey: .loginBtnText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                showDomainTextbox = try container.decode(Bool.self, forKey: .showDomainTextbox)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                showRegisterBtn = try container.decode(Bool.self, forKey: .showRegisterBtn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(launchPage, forKey: .launchPage)

            try? container.encodeIfPresent(continueAsGuest, forKey: .continueAsGuest)

            try? container.encodeIfPresent(loginBtnText, forKey: .loginBtnText)

            try? container.encodeIfPresent(showDomainTextbox, forKey: .showDomainTextbox)

            try? container.encodeIfPresent(showRegisterBtn, forKey: .showRegisterBtn)
        }
    }
}
