

import Foundation
public extension PlatformClient {
    /*
         Model: ConfigurationRes
         Used By: Rewards
     */

    class ConfigurationRes: Codable {
        public var validAndroidPackages: [String]?

        public var termsConditionsLink: String?

        public var applicationId: String?

        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case validAndroidPackages = "valid_android_packages"

            case termsConditionsLink = "terms_conditions_link"

            case applicationId = "application_id"

            case success
        }

        public init(applicationId: String? = nil, success: Bool? = nil, termsConditionsLink: String? = nil, validAndroidPackages: [String]? = nil) {
            self.validAndroidPackages = validAndroidPackages

            self.termsConditionsLink = termsConditionsLink

            self.applicationId = applicationId

            self.success = success
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

            do {
                applicationId = try container.decode(String.self, forKey: .applicationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(validAndroidPackages, forKey: .validAndroidPackages)

            try? container.encodeIfPresent(termsConditionsLink, forKey: .termsConditionsLink)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
