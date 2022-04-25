

import Foundation
public extension PlatformClient {
    /*
         Model: PlatformSchema
         Used By: User
     */

    class PlatformSchema: Codable {
        public var display: String?

        public var lookAndFeel: LookAndFeel?

        public var updatedAt: String?

        public var active: Bool?

        public var forgotPassword: Bool?

        public var login: Login?

        public var skipCaptcha: Bool?

        public var name: String?

        public var meta: MetaSchema?

        public var id: String?

        public var social: Social?

        public var requiredFields: RequiredFields?

        public var registerRequiredFields: RegisterRequiredFields?

        public var skipLogin: Bool?

        public var flashCard: FlashCard?

        public var subtext: String?

        public var socialTokens: SocialTokens?

        public var createdAt: String?

        public var register: Bool?

        public var mobileImage: String?

        public var desktopImage: String?

        public enum CodingKeys: String, CodingKey {
            case display

            case lookAndFeel = "look_and_feel"

            case updatedAt = "updated_at"

            case active

            case forgotPassword = "forgot_password"

            case login

            case skipCaptcha = "skip_captcha"

            case name

            case meta

            case id = "_id"

            case social

            case requiredFields = "required_fields"

            case registerRequiredFields = "register_required_fields"

            case skipLogin = "skip_login"

            case flashCard = "flash_card"

            case subtext

            case socialTokens = "social_tokens"

            case createdAt = "created_at"

            case register

            case mobileImage = "mobile_image"

            case desktopImage = "desktop_image"
        }

        public init(active: Bool? = nil, createdAt: String? = nil, desktopImage: String? = nil, display: String? = nil, flashCard: FlashCard? = nil, forgotPassword: Bool? = nil, login: Login? = nil, lookAndFeel: LookAndFeel? = nil, meta: MetaSchema? = nil, mobileImage: String? = nil, name: String? = nil, register: Bool? = nil, registerRequiredFields: RegisterRequiredFields? = nil, requiredFields: RequiredFields? = nil, skipCaptcha: Bool? = nil, skipLogin: Bool? = nil, social: Social? = nil, socialTokens: SocialTokens? = nil, subtext: String? = nil, updatedAt: String? = nil, id: String? = nil) {
            self.display = display

            self.lookAndFeel = lookAndFeel

            self.updatedAt = updatedAt

            self.active = active

            self.forgotPassword = forgotPassword

            self.login = login

            self.skipCaptcha = skipCaptcha

            self.name = name

            self.meta = meta

            self.id = id

            self.social = social

            self.requiredFields = requiredFields

            self.registerRequiredFields = registerRequiredFields

            self.skipLogin = skipLogin

            self.flashCard = flashCard

            self.subtext = subtext

            self.socialTokens = socialTokens

            self.createdAt = createdAt

            self.register = register

            self.mobileImage = mobileImage

            self.desktopImage = desktopImage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lookAndFeel = try container.decode(LookAndFeel.self, forKey: .lookAndFeel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                active = try container.decode(Bool.self, forKey: .active)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                forgotPassword = try container.decode(Bool.self, forKey: .forgotPassword)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                login = try container.decode(Login.self, forKey: .login)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                skipCaptcha = try container.decode(Bool.self, forKey: .skipCaptcha)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(MetaSchema.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                social = try container.decode(Social.self, forKey: .social)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                requiredFields = try container.decode(RequiredFields.self, forKey: .requiredFields)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                registerRequiredFields = try container.decode(RegisterRequiredFields.self, forKey: .registerRequiredFields)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                skipLogin = try container.decode(Bool.self, forKey: .skipLogin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                flashCard = try container.decode(FlashCard.self, forKey: .flashCard)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subtext = try container.decode(String.self, forKey: .subtext)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                socialTokens = try container.decode(SocialTokens.self, forKey: .socialTokens)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                register = try container.decode(Bool.self, forKey: .register)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mobileImage = try container.decode(String.self, forKey: .mobileImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                desktopImage = try container.decode(String.self, forKey: .desktopImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(lookAndFeel, forKey: .lookAndFeel)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(forgotPassword, forKey: .forgotPassword)

            try? container.encodeIfPresent(login, forKey: .login)

            try? container.encodeIfPresent(skipCaptcha, forKey: .skipCaptcha)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(social, forKey: .social)

            try? container.encodeIfPresent(requiredFields, forKey: .requiredFields)

            try? container.encodeIfPresent(registerRequiredFields, forKey: .registerRequiredFields)

            try? container.encodeIfPresent(skipLogin, forKey: .skipLogin)

            try? container.encodeIfPresent(flashCard, forKey: .flashCard)

            try? container.encodeIfPresent(subtext, forKey: .subtext)

            try? container.encodeIfPresent(socialTokens, forKey: .socialTokens)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(register, forKey: .register)

            try? container.encodeIfPresent(mobileImage, forKey: .mobileImage)

            try? container.encodeIfPresent(desktopImage, forKey: .desktopImage)
        }
    }
}
