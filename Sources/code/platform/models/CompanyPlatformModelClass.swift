

import Foundation
public extension PlatformClient {
    /*
         Model: Company
         Used By: Order
     */

    class Company: Codable {
        public var id: Int?

        public var companyType: String?

        public var businessType: String?

        public var companyName: String?

        public var createdOn: String?

        public var panNo: String?

        public var returnAllowed: Bool?

        public var meta: String?

        public var exchangeAllowed: Bool?

        public var agreementStartDate: String?

        public var exchangeWithinDays: Int?

        public var paymentProcesingCharge: Int?

        public var fyndAFitAvailable: Bool?

        public var modifiedOn: String?

        public var returnWithinDays: Int?

        public enum CodingKeys: String, CodingKey {
            case id

            case companyType = "company_type"

            case businessType = "business_type"

            case companyName = "company_name"

            case createdOn = "created_on"

            case panNo = "pan_no"

            case returnAllowed = "return_allowed"

            case meta

            case exchangeAllowed = "exchange_allowed"

            case agreementStartDate = "agreement_start_date"

            case exchangeWithinDays = "exchange_within_days"

            case paymentProcesingCharge = "payment_procesing_charge"

            case fyndAFitAvailable = "fynd_a_fit_available"

            case modifiedOn = "modified_on"

            case returnWithinDays = "return_within_days"
        }

        public init(agreementStartDate: String? = nil, businessType: String? = nil, companyName: String? = nil, companyType: String? = nil, createdOn: String? = nil, exchangeAllowed: Bool? = nil, exchangeWithinDays: Int? = nil, fyndAFitAvailable: Bool? = nil, id: Int? = nil, meta: String? = nil, modifiedOn: String? = nil, panNo: String? = nil, paymentProcesingCharge: Int? = nil, returnAllowed: Bool? = nil, returnWithinDays: Int? = nil) {
            self.id = id

            self.companyType = companyType

            self.businessType = businessType

            self.companyName = companyName

            self.createdOn = createdOn

            self.panNo = panNo

            self.returnAllowed = returnAllowed

            self.meta = meta

            self.exchangeAllowed = exchangeAllowed

            self.agreementStartDate = agreementStartDate

            self.exchangeWithinDays = exchangeWithinDays

            self.paymentProcesingCharge = paymentProcesingCharge

            self.fyndAFitAvailable = fyndAFitAvailable

            self.modifiedOn = modifiedOn

            self.returnWithinDays = returnWithinDays
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyType = try container.decode(String.self, forKey: .companyType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                businessType = try container.decode(String.self, forKey: .businessType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyName = try container.decode(String.self, forKey: .companyName)

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
                panNo = try container.decode(String.self, forKey: .panNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnAllowed = try container.decode(Bool.self, forKey: .returnAllowed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(String.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                exchangeAllowed = try container.decode(Bool.self, forKey: .exchangeAllowed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                agreementStartDate = try container.decode(String.self, forKey: .agreementStartDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                exchangeWithinDays = try container.decode(Int.self, forKey: .exchangeWithinDays)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentProcesingCharge = try container.decode(Int.self, forKey: .paymentProcesingCharge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fyndAFitAvailable = try container.decode(Bool.self, forKey: .fyndAFitAvailable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnWithinDays = try container.decode(Int.self, forKey: .returnWithinDays)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(companyType, forKey: .companyType)

            try? container.encodeIfPresent(businessType, forKey: .businessType)

            try? container.encodeIfPresent(companyName, forKey: .companyName)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(panNo, forKey: .panNo)

            try? container.encodeIfPresent(returnAllowed, forKey: .returnAllowed)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(exchangeAllowed, forKey: .exchangeAllowed)

            try? container.encodeIfPresent(agreementStartDate, forKey: .agreementStartDate)

            try? container.encodeIfPresent(exchangeWithinDays, forKey: .exchangeWithinDays)

            try? container.encodeIfPresent(paymentProcesingCharge, forKey: .paymentProcesingCharge)

            try? container.encodeIfPresent(fyndAFitAvailable, forKey: .fyndAFitAvailable)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(returnWithinDays, forKey: .returnWithinDays)
        }
    }
}
