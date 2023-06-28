

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: ApplicationCompanyDpViewResponse
         Used By: Serviceability
     */

    class ApplicationCompanyDpViewResponse: Codable {
        public var courierPartnerId: Int?

        public var success: Bool

        public var companyId: Int

        public var applicationId: String

        public enum CodingKeys: String, CodingKey {
            case courierPartnerId = "courier_partner_id"

            case success

            case companyId = "company_id"

            case applicationId = "application_id"
        }

        public init(applicationId: String, companyId: Int, courierPartnerId: Int? = nil, success: Bool) {
            self.courierPartnerId = courierPartnerId

            self.success = success

            self.companyId = companyId

            self.applicationId = applicationId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                courierPartnerId = try container.decode(Int.self, forKey: .courierPartnerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            companyId = try container.decode(Int.self, forKey: .companyId)

            applicationId = try container.decode(String.self, forKey: .applicationId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(courierPartnerId, forKey: .courierPartnerId)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: ApplicationCompanyDpViewResponse
         Used By: Serviceability
     */

    class ApplicationCompanyDpViewResponse: Codable {
        public var courierPartnerId: Int?

        public var success: Bool

        public var companyId: Int

        public var applicationId: String

        public enum CodingKeys: String, CodingKey {
            case courierPartnerId = "courier_partner_id"

            case success

            case companyId = "company_id"

            case applicationId = "application_id"
        }

        public init(applicationId: String, companyId: Int, courierPartnerId: Int? = nil, success: Bool) {
            self.courierPartnerId = courierPartnerId

            self.success = success

            self.companyId = companyId

            self.applicationId = applicationId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                courierPartnerId = try container.decode(Int.self, forKey: .courierPartnerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            companyId = try container.decode(Int.self, forKey: .companyId)

            applicationId = try container.decode(String.self, forKey: .applicationId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(courierPartnerId, forKey: .courierPartnerId)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
        }
    }
}
