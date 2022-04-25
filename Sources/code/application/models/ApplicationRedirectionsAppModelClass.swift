

import Foundation
public extension ApplicationClient {
    /*
         Model: ApplicationRedirections
         Used By: Common
     */
    class ApplicationRedirections: Codable {
        public var redirectFrom: String?

        public var redirectTo: String?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case redirectFrom = "redirect_from"

            case redirectTo = "redirect_to"

            case type
        }

        public init(redirectFrom: String? = nil, redirectTo: String? = nil, type: String? = nil) {
            self.redirectFrom = redirectFrom

            self.redirectTo = redirectTo

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                redirectFrom = try container.decode(String.self, forKey: .redirectFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                redirectTo = try container.decode(String.self, forKey: .redirectTo)

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

            try? container.encodeIfPresent(redirectFrom, forKey: .redirectFrom)

            try? container.encodeIfPresent(redirectTo, forKey: .redirectTo)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
