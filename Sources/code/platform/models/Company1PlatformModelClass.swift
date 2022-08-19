

import Foundation
public extension PlatformClient {
    /*
         Model: Company1
         Used By: Order
     */

    class Company1: Codable {
        public var companyName: String?

        public var commission: Double?

        public var meta: CompanyMeta?

        public var paymentProcesingCharge: Double?

        public var tanNo: String?

        public var gstNumber: String?

        public var exchangeAllowed: Bool?

        public var vatNo: String?

        public var returnWithinDays: Int?

        public var businessType: String?

        public var exchangeWithinDays: Int?

        public var paymentType: String?

        public var returnAllowed: Bool?

        public var cst: String?

        public var companyType: String?

        public var cId: Int?

        public var panNo: String?

        public var agreementStartDate: Int?

        public var fyndAFitAvailable: Bool

        public var modifiedOn: Int?

        public var createdOn: Int?

        public enum CodingKeys: String, CodingKey {
            case companyName = "company_name"

            case commission

            case meta

            case paymentProcesingCharge = "payment_procesing_charge"

            case tanNo = "tan_no"

            case gstNumber = "gst_number"

            case exchangeAllowed = "exchange_allowed"

            case vatNo = "vat_no"

            case returnWithinDays = "return_within_days"

            case businessType = "business_type"

            case exchangeWithinDays = "exchange_within_days"

            case paymentType = "payment_type"

            case returnAllowed = "return_allowed"

            case cst

            case companyType = "company_type"

            case cId = "c_id"

            case panNo = "pan_no"

            case agreementStartDate = "agreement_start_date"

            case fyndAFitAvailable = "fynd_a_fit_available"

            case modifiedOn = "modified_on"

            case createdOn = "created_on"
        }

        public init(agreementStartDate: Int? = nil, businessType: String? = nil, commission: Double? = nil, companyName: String? = nil, companyType: String? = nil, createdOn: Int? = nil, cst: String? = nil, cId: Int? = nil, exchangeAllowed: Bool? = nil, exchangeWithinDays: Int? = nil, fyndAFitAvailable: Bool, gstNumber: String? = nil, meta: CompanyMeta? = nil, modifiedOn: Int? = nil, panNo: String? = nil, paymentProcesingCharge: Double? = nil, paymentType: String? = nil, returnAllowed: Bool? = nil, returnWithinDays: Int? = nil, tanNo: String? = nil, vatNo: String? = nil) {
            self.companyName = companyName

            self.commission = commission

            self.meta = meta

            self.paymentProcesingCharge = paymentProcesingCharge

            self.tanNo = tanNo

            self.gstNumber = gstNumber

            self.exchangeAllowed = exchangeAllowed

            self.vatNo = vatNo

            self.returnWithinDays = returnWithinDays

            self.businessType = businessType

            self.exchangeWithinDays = exchangeWithinDays

            self.paymentType = paymentType

            self.returnAllowed = returnAllowed

            self.cst = cst

            self.companyType = companyType

            self.cId = cId

            self.panNo = panNo

            self.agreementStartDate = agreementStartDate

            self.fyndAFitAvailable = fyndAFitAvailable

            self.modifiedOn = modifiedOn

            self.createdOn = createdOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companyName = try container.decode(String.self, forKey: .companyName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                commission = try container.decode(Double.self, forKey: .commission)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(CompanyMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentProcesingCharge = try container.decode(Double.self, forKey: .paymentProcesingCharge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tanNo = try container.decode(String.self, forKey: .tanNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstNumber = try container.decode(String.self, forKey: .gstNumber)

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
                vatNo = try container.decode(String.self, forKey: .vatNo)

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

            do {
                businessType = try container.decode(String.self, forKey: .businessType)

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
                paymentType = try container.decode(String.self, forKey: .paymentType)

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
                cst = try container.decode(String.self, forKey: .cst)

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
                cId = try container.decode(Int.self, forKey: .cId)

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
                agreementStartDate = try container.decode(Int.self, forKey: .agreementStartDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndAFitAvailable = try container.decode(Bool.self, forKey: .fyndAFitAvailable)

            do {
                modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(Int.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyName, forKey: .companyName)

            try? container.encodeIfPresent(commission, forKey: .commission)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(paymentProcesingCharge, forKey: .paymentProcesingCharge)

            try? container.encode(tanNo, forKey: .tanNo)

            try? container.encodeIfPresent(gstNumber, forKey: .gstNumber)

            try? container.encodeIfPresent(exchangeAllowed, forKey: .exchangeAllowed)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(returnWithinDays, forKey: .returnWithinDays)

            try? container.encodeIfPresent(businessType, forKey: .businessType)

            try? container.encode(exchangeWithinDays, forKey: .exchangeWithinDays)

            try? container.encodeIfPresent(paymentType, forKey: .paymentType)

            try? container.encodeIfPresent(returnAllowed, forKey: .returnAllowed)

            try? container.encode(cst, forKey: .cst)

            try? container.encodeIfPresent(companyType, forKey: .companyType)

            try? container.encodeIfPresent(cId, forKey: .cId)

            try? container.encodeIfPresent(panNo, forKey: .panNo)

            try? container.encodeIfPresent(agreementStartDate, forKey: .agreementStartDate)

            try? container.encodeIfPresent(fyndAFitAvailable, forKey: .fyndAFitAvailable)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        }
    }
}
