

import Foundation

public extension PlatformClient.ApplicationClient.Rewards {
    /*
         Model: ConfigurationRequest
         Used By: Rewards
     */

    class ConfigurationRequest: Codable {
        public var validAndroidPackages: [String]?

        public var termsConditionsLink: String?

        public enum CodingKeys: String, CodingKey {
            case validAndroidPackages = "valid_android_packages"

            case termsConditionsLink = "terms_conditions_link"
        }

        public init(termsConditionsLink: String? = nil, validAndroidPackages: [String]? = nil) {
            self.validAndroidPackages = validAndroidPackages

            self.termsConditionsLink = termsConditionsLink
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                validAndroidPackages = try container.decode([String].self, forKey: .validAndroidPackages)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                termsConditionsLink = try container.decode(String.self, forKey: .termsConditionsLink)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(validAndroidPackages, forKey: .validAndroidPackages)

            try? container.encodeIfPresent(termsConditionsLink, forKey: .termsConditionsLink)
        }
    }
}
