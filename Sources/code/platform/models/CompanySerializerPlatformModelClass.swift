

import Foundation
public extension PlatformClient {
    /*
         Model: CompanySerializer
         Used By: CompanyProfile
     */

    class CompanySerializer: Codable {
        public var companyType: String

        public var name: String?

        public var rejectReason: String?

        public var businessType: String

        public var marketChannels: [String]?

        public var stage: String?

        public var customJson: [String: Any]?

        public var businessCountryInfo: BusinessCountryInfo?

        public var uid: Int?

        public var notificationEmails: [String]?

        public var details: CompanyDetails?

        public var addresses: [GetAddressSerializer]?

        public enum CodingKeys: String, CodingKey {
            case companyType = "company_type"

            case name

            case rejectReason = "reject_reason"

            case businessType = "business_type"

            case marketChannels = "market_channels"

            case stage

            case customJson = "_custom_json"

            case businessCountryInfo = "business_country_info"

            case uid

            case notificationEmails = "notification_emails"

            case details

            case addresses
        }

        public init(addresses: [GetAddressSerializer]? = nil, businessCountryInfo: BusinessCountryInfo? = nil, businessType: String, companyType: String, details: CompanyDetails? = nil, marketChannels: [String]? = nil, name: String? = nil, notificationEmails: [String]? = nil, rejectReason: String? = nil, stage: String? = nil, uid: Int? = nil, customJson: [String: Any]? = nil) {
            self.companyType = companyType

            self.name = name

            self.rejectReason = rejectReason

            self.businessType = businessType

            self.marketChannels = marketChannels

            self.stage = stage

            self.customJson = customJson

            self.businessCountryInfo = businessCountryInfo

            self.uid = uid

            self.notificationEmails = notificationEmails

            self.details = details

            self.addresses = addresses
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyType = try container.decode(String.self, forKey: .companyType)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rejectReason = try container.decode(String.self, forKey: .rejectReason)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            businessType = try container.decode(String.self, forKey: .businessType)

            do {
                marketChannels = try container.decode([String].self, forKey: .marketChannels)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                businessCountryInfo = try container.decode(BusinessCountryInfo.self, forKey: .businessCountryInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                details = try container.decode(CompanyDetails.self, forKey: .details)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addresses = try container.decode([GetAddressSerializer].self, forKey: .addresses)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyType, forKey: .companyType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(rejectReason, forKey: .rejectReason)

            try? container.encodeIfPresent(businessType, forKey: .businessType)

            try? container.encodeIfPresent(marketChannels, forKey: .marketChannels)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(businessCountryInfo, forKey: .businessCountryInfo)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(details, forKey: .details)

            try? container.encodeIfPresent(addresses, forKey: .addresses)
        }
    }
}
