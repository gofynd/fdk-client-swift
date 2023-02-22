

import Foundation
public extension PlatformClient {
    /*
         Model: DocumentsResponse
         Used By: Logistic
     */

    class DocumentsResponse: Codable {
        public var verified: Bool?

        public var value: String?

        public var legalName: String?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case verified

            case value

            case legalName = "legal_name"

            case type
        }

        public init(legalName: String? = nil, type: String? = nil, value: String? = nil, verified: Bool? = nil) {
            self.verified = verified

            self.value = value

            self.legalName = legalName

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                verified = try container.decode(Bool.self, forKey: .verified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                legalName = try container.decode(String.self, forKey: .legalName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(verified, forKey: .verified)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(legalName, forKey: .legalName)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
