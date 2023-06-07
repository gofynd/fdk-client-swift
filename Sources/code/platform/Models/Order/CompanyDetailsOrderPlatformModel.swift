

import Foundation

public extension PlatformClient.Order {
    /*
         Model: CompanyDetails
         Used By: Order
     */

    class CompanyDetails: Codable {
        public var companyId: Int?

        public var address: [String: Any]?

        public var companyContact: ContactDetails?

        public var companyName: String?

        public var companyGst: String?

        public var companyCin: String?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case address

            case companyContact = "company_contact"

            case companyName = "company_name"

            case companyGst = "company_gst"

            case companyCin = "company_cin"
        }

        public init(address: [String: Any]? = nil, companyCin: String? = nil, companyContact: ContactDetails? = nil, companyGst: String? = nil, companyId: Int? = nil, companyName: String? = nil) {
            self.companyId = companyId

            self.address = address

            self.companyContact = companyContact

            self.companyName = companyName

            self.companyGst = companyGst

            self.companyCin = companyCin
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address = try container.decode([String: Any].self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyContact = try container.decode(ContactDetails.self, forKey: .companyContact)

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
                companyGst = try container.decode(String.self, forKey: .companyGst)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyCin = try container.decode(String.self, forKey: .companyCin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(companyContact, forKey: .companyContact)

            try? container.encodeIfPresent(companyName, forKey: .companyName)

            try? container.encodeIfPresent(companyGst, forKey: .companyGst)

            try? container.encode(companyCin, forKey: .companyCin)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: CompanyDetails
         Used By: Order
     */

    class CompanyDetails: Codable {
        public var companyId: Int?

        public var address: [String: Any]?

        public var companyContact: ContactDetails?

        public var companyName: String?

        public var companyGst: String?

        public var companyCin: String?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case address

            case companyContact = "company_contact"

            case companyName = "company_name"

            case companyGst = "company_gst"

            case companyCin = "company_cin"
        }

        public init(address: [String: Any]? = nil, companyCin: String? = nil, companyContact: ContactDetails? = nil, companyGst: String? = nil, companyId: Int? = nil, companyName: String? = nil) {
            self.companyId = companyId

            self.address = address

            self.companyContact = companyContact

            self.companyName = companyName

            self.companyGst = companyGst

            self.companyCin = companyCin
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address = try container.decode([String: Any].self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyContact = try container.decode(ContactDetails.self, forKey: .companyContact)

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
                companyGst = try container.decode(String.self, forKey: .companyGst)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyCin = try container.decode(String.self, forKey: .companyCin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(companyContact, forKey: .companyContact)

            try? container.encodeIfPresent(companyName, forKey: .companyName)

            try? container.encodeIfPresent(companyGst, forKey: .companyGst)

            try? container.encode(companyCin, forKey: .companyCin)
        }
    }
}
