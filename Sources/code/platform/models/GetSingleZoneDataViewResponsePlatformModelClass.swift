

import Foundation
public extension PlatformClient {
    /*
         Model: GetSingleZoneDataViewResponse
         Used By: Logistic
     */

    class GetSingleZoneDataViewResponse: Codable {
        public var data: GetZoneDataViewItems

        public enum CodingKeys: String, CodingKey {
            case data
        }

        public init(data: GetZoneDataViewItems) {
            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode(GetZoneDataViewItems.self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
