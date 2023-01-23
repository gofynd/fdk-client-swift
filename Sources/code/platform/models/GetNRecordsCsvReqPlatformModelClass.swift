

import Foundation
public extension PlatformClient {
    /*
         Model: GetNRecordsCsvReq
         Used By: Communication
     */

    class GetNRecordsCsvReq: Codable {
        public var url: String?

        public var header: Bool?

        public var count: Int?

        public enum CodingKeys: String, CodingKey {
            case url

            case header

            case count
        }

        public init(count: Int? = nil, header: Bool? = nil, url: String? = nil) {
            self.url = url

            self.header = header

            self.count = count
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                header = try container.decode(Bool.self, forKey: .header)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                count = try container.decode(Int.self, forKey: .count)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(header, forKey: .header)

            try? container.encodeIfPresent(count, forKey: .count)
        }
    }
}
