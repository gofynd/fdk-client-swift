

import Foundation
public extension PlatformClient {
    /*
         Model: InvoiceItemsPlanRecurring
         Used By: Billing
     */

    class InvoiceItemsPlanRecurring: Codable {
        public var interval: String?

        public var intervalCount: Int?

        public enum CodingKeys: String, CodingKey {
            case interval

            case intervalCount = "interval_count"
        }

        public init(interval: String? = nil, intervalCount: Int? = nil) {
            self.interval = interval

            self.intervalCount = intervalCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                interval = try container.decode(String.self, forKey: .interval)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                intervalCount = try container.decode(Int.self, forKey: .intervalCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(interval, forKey: .interval)

            try? container.encodeIfPresent(intervalCount, forKey: .intervalCount)
        }
    }
}
