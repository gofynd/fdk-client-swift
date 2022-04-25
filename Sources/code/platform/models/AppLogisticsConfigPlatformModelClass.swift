

import Foundation
public extension PlatformClient {
    /*
         Model: AppLogisticsConfig
         Used By: Configuration
     */

    class AppLogisticsConfig: Codable {
        public var logisticsBySeller: Bool?

        public var serviceabilityCheck: Bool?

        public var sameDayDelivery: Bool?

        public var dpAssignment: Bool?

        public enum CodingKeys: String, CodingKey {
            case logisticsBySeller = "logistics_by_seller"

            case serviceabilityCheck = "serviceability_check"

            case sameDayDelivery = "same_day_delivery"

            case dpAssignment = "dp_assignment"
        }

        public init(dpAssignment: Bool? = nil, logisticsBySeller: Bool? = nil, sameDayDelivery: Bool? = nil, serviceabilityCheck: Bool? = nil) {
            self.logisticsBySeller = logisticsBySeller

            self.serviceabilityCheck = serviceabilityCheck

            self.sameDayDelivery = sameDayDelivery

            self.dpAssignment = dpAssignment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                logisticsBySeller = try container.decode(Bool.self, forKey: .logisticsBySeller)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                serviceabilityCheck = try container.decode(Bool.self, forKey: .serviceabilityCheck)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sameDayDelivery = try container.decode(Bool.self, forKey: .sameDayDelivery)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpAssignment = try container.decode(Bool.self, forKey: .dpAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(logisticsBySeller, forKey: .logisticsBySeller)

            try? container.encodeIfPresent(serviceabilityCheck, forKey: .serviceabilityCheck)

            try? container.encodeIfPresent(sameDayDelivery, forKey: .sameDayDelivery)

            try? container.encodeIfPresent(dpAssignment, forKey: .dpAssignment)
        }
    }
}
