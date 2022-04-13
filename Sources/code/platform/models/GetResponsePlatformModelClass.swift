import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: GetResponse
         Used By: Feedback
     */

    class GetResponse: Codable {
        public var data: [String: Any]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case data

            case page
        }

        public init(data: [String: Any]?, page: Page?) {
            self.data = data

            self.page = page
        }

        public func duplicate() -> GetResponse {
            let dict = self.dictionary!
            let copy = GetResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode([String: Any].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}
