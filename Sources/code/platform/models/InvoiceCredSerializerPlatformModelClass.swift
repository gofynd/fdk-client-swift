import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: InvoiceCredSerializer
         Used By: Catalog
     */

    class InvoiceCredSerializer: Codable {
        public var username: String?

        public var enabled: Bool?

        public var password: String?

        public enum CodingKeys: String, CodingKey {
            case username

            case enabled

            case password
        }

        public init(enabled: Bool?, password: String?, username: String?) {
            self.username = username

            self.enabled = enabled

            self.password = password
        }

        public func duplicate() -> InvoiceCredSerializer {
            let dict = self.dictionary!
            let copy = InvoiceCredSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                username = try container.decode(String.self, forKey: .username)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                password = try container.decode(String.self, forKey: .password)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(password, forKey: .password)
        }
    }
}
