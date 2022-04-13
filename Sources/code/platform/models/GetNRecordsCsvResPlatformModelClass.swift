import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: GetNRecordsCsvRes
         Used By: Communication
     */

    class GetNRecordsCsvRes: Codable {
        public var items: [GetNRecordsCsvResItems]?

        public enum CodingKeys: String, CodingKey {
            case items
        }

        public init(items: [GetNRecordsCsvResItems]?) {
            self.items = items
        }

        public func duplicate() -> GetNRecordsCsvRes {
            let dict = self.dictionary!
            let copy = GetNRecordsCsvRes(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([GetNRecordsCsvResItems].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
