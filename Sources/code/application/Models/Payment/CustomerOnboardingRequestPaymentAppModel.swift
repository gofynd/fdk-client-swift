

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CustomerOnboardingRequest
         Used By: Payment
     */
    class CustomerOnboardingRequest: Codable {
        public var mcc: String?

        public var personalInfo: UserPersonalInfoInDetails?

        public var marketplaceInfo: MarketplaceInfo?

        public var businessInfo: BusinessDetails?

        public var source: String?

        public var aggregator: String

        public var device: DeviceDetails?

        public enum CodingKeys: String, CodingKey {
            case mcc

            case personalInfo = "personal_info"

            case marketplaceInfo = "marketplace_info"

            case businessInfo = "business_info"

            case source

            case aggregator

            case device
        }

        public init(aggregator: String, businessInfo: BusinessDetails? = nil, device: DeviceDetails? = nil, marketplaceInfo: MarketplaceInfo? = nil, mcc: String? = nil, personalInfo: UserPersonalInfoInDetails? = nil, source: String? = nil) {
            self.mcc = mcc

            self.personalInfo = personalInfo

            self.marketplaceInfo = marketplaceInfo

            self.businessInfo = businessInfo

            self.source = source

            self.aggregator = aggregator

            self.device = device
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mcc = try container.decode(String.self, forKey: .mcc)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                personalInfo = try container.decode(UserPersonalInfoInDetails.self, forKey: .personalInfo)

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
                businessInfo = try container.decode(BusinessDetails.self, forKey: .businessInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                source = try container.decode(String.self, forKey: .source)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                device = try container.decode(DeviceDetails.self, forKey: .device)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(mcc, forKey: .mcc)

            try? container.encodeIfPresent(personalInfo, forKey: .personalInfo)

            try? container.encodeIfPresent(marketplaceInfo, forKey: .marketplaceInfo)

            try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(device, forKey: .device)
        }
    }
}
