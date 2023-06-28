

import Foundation

public extension PlatformClient.Order {
    /*
         Model: CompanyDetails
         Used By: Order
     */

    class CompanyDetails: Codable {
        public var companyCin: String?

        public var companyName: String?

        public var address: [String: Any]?

        public var companyContact: ContactDetails?

        public var companyGst: String?

        public var companyId: Int?

        public enum CodingKeys: String, CodingKey {
            case companyCin = "company_cin"

            case companyName = "company_name"

            case address

            case companyContact = "company_contact"

            case companyGst = "company_gst"

            case companyId = "company_id"
        }

        public init(address: [String: Any]? = nil, companyCin: String? = nil, companyContact: ContactDetails? = nil, companyGst: String? = nil, companyId: Int? = nil, companyName: String? = nil) {
            self.companyCin = companyCin

            self.companyName = companyName

            self.address = address

            self.companyContact = companyContact

            self.companyGst = companyGst

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companyCin = try container.decode(String.self, forKey: .companyCin)

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
                companyGst = try container.decode(String.self, forKey: .companyGst)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(companyCin, forKey: .companyCin)

            try? container.encodeIfPresent(companyName, forKey: .companyName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(companyContact, forKey: .companyContact)

            try? container.encodeIfPresent(companyGst, forKey: .companyGst)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: CompanyDetails
         Used By: Order
     */

    class CompanyDetails: Codable {
        public var companyCin: String?

        public var companyName: String?

        public var address: [String: Any]?

        public var companyContact: ContactDetails?

        public var companyGst: String?

        public var companyId: Int?

        public enum CodingKeys: String, CodingKey {
            case companyCin = "company_cin"

            case companyName = "company_name"

            case address

            case companyContact = "company_contact"

            case companyGst = "company_gst"

            case companyId = "company_id"
        }

        public init(address: [String: Any]? = nil, companyCin: String? = nil, companyContact: ContactDetails? = nil, companyGst: String? = nil, companyId: Int? = nil, companyName: String? = nil) {
            self.companyCin = companyCin

            self.companyName = companyName

            self.address = address

            self.companyContact = companyContact

            self.companyGst = companyGst

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companyCin = try container.decode(String.self, forKey: .companyCin)

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
                companyGst = try container.decode(String.self, forKey: .companyGst)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(companyCin, forKey: .companyCin)

            try? container.encodeIfPresent(companyName, forKey: .companyName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(companyContact, forKey: .companyContact)

            try? container.encodeIfPresent(companyGst, forKey: .companyGst)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
