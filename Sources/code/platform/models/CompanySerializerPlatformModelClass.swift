

import Foundation
public extension PlatformClient {
    /*
         Model: CompanySerializer
         Used By: CompanyProfile
     */

    class CompanySerializer: Codable {
        public var marketChannels: [String]?

        public var createdOn: String?

        public var addresses: [GetAddressSerializer]?

        public var notificationEmails: [String]?

        public var rejectReason: String?

        public var verifiedOn: String?

        public var customJson: [String: Any]?

        public var businessCountryInfo: BusinessCountryInfo?

        public var uid: Int?

        public var createdBy: UserSerializer?

        public var stage: String?

        public var companyType: String

        public var modifiedOn: String?

        public var businessType: String

        public var modifiedBy: UserSerializer?

        public var verifiedBy: UserSerializer?

        public var details: CompanyDetails?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case marketChannels = "market_channels"

            case createdOn = "created_on"

            case addresses

            case notificationEmails = "notification_emails"

            case rejectReason = "reject_reason"

            case verifiedOn = "verified_on"

            case customJson = "_custom_json"

            case businessCountryInfo = "business_country_info"

            case uid

            case createdBy = "created_by"

            case stage

            case companyType = "company_type"

            case modifiedOn = "modified_on"

            case businessType = "business_type"

            case modifiedBy = "modified_by"

            case verifiedBy = "verified_by"

            case details

            case name
        }

        public init(addresses: [GetAddressSerializer]? = nil, businessCountryInfo: BusinessCountryInfo? = nil, businessType: String, companyType: String, createdBy: UserSerializer? = nil, createdOn: String? = nil, details: CompanyDetails? = nil, marketChannels: [String]? = nil, modifiedBy: UserSerializer? = nil, modifiedOn: String? = nil, name: String? = nil, notificationEmails: [String]? = nil, rejectReason: String? = nil, stage: String? = nil, uid: Int? = nil, verifiedBy: UserSerializer? = nil, verifiedOn: String? = nil, customJson: [String: Any]? = nil) {
            self.marketChannels = marketChannels

            self.createdOn = createdOn

            self.addresses = addresses

            self.notificationEmails = notificationEmails

            self.rejectReason = rejectReason

            self.verifiedOn = verifiedOn

            self.customJson = customJson

            self.businessCountryInfo = businessCountryInfo

            self.uid = uid

            self.createdBy = createdBy

            self.stage = stage

            self.companyType = companyType

            self.modifiedOn = modifiedOn

            self.businessType = businessType

            self.modifiedBy = modifiedBy

            self.verifiedBy = verifiedBy

            self.details = details

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                marketChannels = try container.decode([String].self, forKey: .marketChannels)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

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

            do {
                notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

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

            do {
                verifiedOn = try container.decode(String.self, forKey: .verifiedOn)

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
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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

            companyType = try container.decode(String.self, forKey: .companyType)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            businessType = try container.decode(String.self, forKey: .businessType)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifiedBy = try container.decode(UserSerializer.self, forKey: .verifiedBy)

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
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(marketChannels, forKey: .marketChannels)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(addresses, forKey: .addresses)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(rejectReason, forKey: .rejectReason)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(businessCountryInfo, forKey: .businessCountryInfo)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(companyType, forKey: .companyType)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(businessType, forKey: .businessType)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(details, forKey: .details)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}