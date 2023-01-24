

import Foundation
public extension ApplicationClient {
    /*
         Model: CustomerOnboardingRequest
         Used By: Payment
     */
    class CustomerOnboardingRequest: Codable {
        public var source: String

        public var mcc: String?

        public var aggregator: String

        public var businessInfo: BusinessDetails?

        public var marketplaceInfo: MarketplaceInfo?

        public var device: DeviceDetails?

        public var personalInfo: UserPersonalInfoInDetails

        public enum CodingKeys: String, CodingKey {
            case source

            case mcc

            case aggregator

            case businessInfo = "business_info"

            case marketplaceInfo = "marketplace_info"

            case device

            case personalInfo = "personal_info"
        }

        public init(aggregator: String, businessInfo: BusinessDetails? = nil, device: DeviceDetails? = nil, marketplaceInfo: MarketplaceInfo? = nil, mcc: String? = nil, personalInfo: UserPersonalInfoInDetails, source: String) {
            self.source = source

            self.mcc = mcc

            self.aggregator = aggregator

            self.businessInfo = businessInfo

            self.marketplaceInfo = marketplaceInfo

            self.device = device

            self.personalInfo = personalInfo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            source = try container.decode(String.self, forKey: .source)

            do {
                mcc = try container.decode(String.self, forKey: .mcc)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                businessInfo = try container.decode(BusinessDetails.self, forKey: .businessInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marketplaceInfo = try container.decode(MarketplaceInfo.self, forKey: .marketplaceInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                device = try container.decode(DeviceDetails.self, forKey: .device)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            personalInfo = try container.decode(UserPersonalInfoInDetails.self, forKey: .personalInfo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encode(mcc, forKey: .mcc)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)

            try? container.encodeIfPresent(marketplaceInfo, forKey: .marketplaceInfo)

            try? container.encodeIfPresent(device, forKey: .device)

            try? container.encodeIfPresent(personalInfo, forKey: .personalInfo)
        }
    }
}
