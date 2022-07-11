

import Foundation
public extension ApplicationClient {
    /*
         Model: CustomerOnboardingRequest
         Used By: Payment
     */
    class CustomerOnboardingRequest: Codable {
        public var aggregator: String

        public var source: String

        public var marketplaceInfo: MarketplaceInfo?

        public var personalInfo: UserPersonalInfoInDetails

        public var device: DeviceDetails?

        public var businessInfo: BusinessDetails?

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case source

            case marketplaceInfo = "marketplace_info"

            case personalInfo = "personal_info"

            case device

            case businessInfo = "business_info"
        }

        public init(aggregator: String, businessInfo: BusinessDetails? = nil, device: DeviceDetails? = nil, marketplaceInfo: MarketplaceInfo? = nil, personalInfo: UserPersonalInfoInDetails, source: String) {
            self.aggregator = aggregator

            self.source = source

            self.marketplaceInfo = marketplaceInfo

            self.personalInfo = personalInfo

            self.device = device

            self.businessInfo = businessInfo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            source = try container.decode(String.self, forKey: .source)

            do {
                marketplaceInfo = try container.decode(MarketplaceInfo.self, forKey: .marketplaceInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            personalInfo = try container.decode(UserPersonalInfoInDetails.self, forKey: .personalInfo)

            do {
                device = try container.decode(DeviceDetails.self, forKey: .device)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                businessInfo = try container.decode(BusinessDetails.self, forKey: .businessInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(marketplaceInfo, forKey: .marketplaceInfo)

            try? container.encodeIfPresent(personalInfo, forKey: .personalInfo)

            try? container.encodeIfPresent(device, forKey: .device)

            try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)
        }
    }
}
