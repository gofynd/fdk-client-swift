

import Foundation

public extension PlatformClient.Partner {
    /*
         Model: Support
         Used By: Partner
     */

    class Support: Codable {
        public var email: String?

        public var faqUrl: String?

        public var phone: String?

        public var privacyPolicyUrl: String?

        public var websiteUrl: String?

        public enum CodingKeys: String, CodingKey {
            case email

            case faqUrl = "faq_url"

            case phone

            case privacyPolicyUrl = "privacy_policy_url"

            case websiteUrl = "website_url"
        }

        public init(email: String? = nil, faqUrl: String? = nil, phone: String? = nil, privacyPolicyUrl: String? = nil, websiteUrl: String? = nil) {
            self.email = email

            self.faqUrl = faqUrl

            self.phone = phone

            self.privacyPolicyUrl = privacyPolicyUrl

            self.websiteUrl = websiteUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                faqUrl = try container.decode(String.self, forKey: .faqUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                phone = try container.decode(String.self, forKey: .phone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                privacyPolicyUrl = try container.decode(String.self, forKey: .privacyPolicyUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                websiteUrl = try container.decode(String.self, forKey: .websiteUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(faqUrl, forKey: .faqUrl)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(privacyPolicyUrl, forKey: .privacyPolicyUrl)

            try? container.encodeIfPresent(websiteUrl, forKey: .websiteUrl)
        }
    }
}

public extension PlatformClient.ApplicationClient.Partner {
    /*
         Model: Support
         Used By: Partner
     */

    class Support: Codable {
        public var email: String?

        public var faqUrl: String?

        public var phone: String?

        public var privacyPolicyUrl: String?

        public var websiteUrl: String?

        public enum CodingKeys: String, CodingKey {
            case email

            case faqUrl = "faq_url"

            case phone

            case privacyPolicyUrl = "privacy_policy_url"

            case websiteUrl = "website_url"
        }

        public init(email: String? = nil, faqUrl: String? = nil, phone: String? = nil, privacyPolicyUrl: String? = nil, websiteUrl: String? = nil) {
            self.email = email

            self.faqUrl = faqUrl

            self.phone = phone

            self.privacyPolicyUrl = privacyPolicyUrl

            self.websiteUrl = websiteUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                faqUrl = try container.decode(String.self, forKey: .faqUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                phone = try container.decode(String.self, forKey: .phone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                privacyPolicyUrl = try container.decode(String.self, forKey: .privacyPolicyUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                websiteUrl = try container.decode(String.self, forKey: .websiteUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(faqUrl, forKey: .faqUrl)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(privacyPolicyUrl, forKey: .privacyPolicyUrl)

            try? container.encodeIfPresent(websiteUrl, forKey: .websiteUrl)
        }
    }
}
