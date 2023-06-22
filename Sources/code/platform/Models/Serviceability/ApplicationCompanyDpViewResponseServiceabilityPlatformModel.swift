

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: ApplicationCompanyDpViewResponse
         Used By: Serviceability
     */

    class ApplicationCompanyDpViewResponse: Codable {
        public var companyId: Int

        public var success: Bool

        public var applicationId: String

        public var courierPartnerId: Int?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case success

            case applicationId = "application_id"

            case courierPartnerId = "courier_partner_id"
        }

        public init(applicationId: String, companyId: Int, courierPartnerId: Int? = nil, success: Bool) {
            self.companyId = companyId

            self.success = success

            self.applicationId = applicationId

            self.courierPartnerId = courierPartnerId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            success = try container.decode(Bool.self, forKey: .success)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                courierPartnerId = try container.decode(Int.self, forKey: .courierPartnerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(courierPartnerId, forKey: .courierPartnerId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: ApplicationCompanyDpViewResponse
         Used By: Serviceability
     */

    class ApplicationCompanyDpViewResponse: Codable {
        public var companyId: Int

        public var success: Bool

        public var applicationId: String

        public var courierPartnerId: Int?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case success

            case applicationId = "application_id"

            case courierPartnerId = "courier_partner_id"
        }

        public init(applicationId: String, companyId: Int, courierPartnerId: Int? = nil, success: Bool) {
            self.companyId = companyId

            self.success = success

            self.applicationId = applicationId

            self.courierPartnerId = courierPartnerId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            success = try container.decode(Bool.self, forKey: .success)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                courierPartnerId = try container.decode(Int.self, forKey: .courierPartnerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(courierPartnerId, forKey: .courierPartnerId)
        }
    }
}
