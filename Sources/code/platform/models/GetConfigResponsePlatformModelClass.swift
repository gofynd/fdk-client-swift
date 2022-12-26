

import Foundation
public extension PlatformClient {
    /*
         Model: GetConfigResponse
         Used By: Catalog
     */

    class GetConfigResponse: Codable {
        public var page: PageResponseType

        public var data: [[String: Any]]

        public enum CodingKeys: String, CodingKey {
            case page

            case data
        }

        public init(data: [[String: Any]], page: PageResponseType) {
            self.page = page

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            page = try container.decode(PageResponseType.self, forKey: .page)

            data = try container.decode([[String: Any]].self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
