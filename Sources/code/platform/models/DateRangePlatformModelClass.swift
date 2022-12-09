

import Foundation
public extension PlatformClient {
    /*
         Model: DateRange
         Used By: Orders
     */

    class DateRange: Codable {
        public var fromDate: String?

        public var toDate: String?

        public enum CodingKeys: String, CodingKey {
            case fromDate = "from_date"

            case toDate = "to_date"
        }

        public init(fromDate: String? = nil, toDate: String? = nil) {
            self.fromDate = fromDate

            self.toDate = toDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                fromDate = try container.decode(String.self, forKey: .fromDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                toDate = try container.decode(String.self, forKey: .toDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fromDate, forKey: .fromDate)

            try? container.encodeIfPresent(toDate, forKey: .toDate)
        }
    }
}
