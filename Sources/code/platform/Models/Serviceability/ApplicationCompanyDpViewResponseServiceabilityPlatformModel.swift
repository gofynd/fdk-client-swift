

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: ApplicationCompanyDpViewResponse
         Used By: Serviceability
     */

    class ApplicationCompanyDpViewResponse: Codable {
        public var courierPartnerId: Int?

        public var applicationId: String

        public var companyId: Int

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case courierPartnerId = "courier_partner_id"

            case applicationId = "application_id"

            case companyId = "company_id"

            case success
        }

        public init(applicationId: String, companyId: Int, courierPartnerId: Int? = nil, success: Bool) {
            self.courierPartnerId = courierPartnerId

            self.applicationId = applicationId

            self.companyId = companyId

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                courierPartnerId = try container.decode(Int.self, forKey: .courierPartnerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(courierPartnerId, forKey: .courierPartnerId)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(success, forKey: .success)
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

        public var applicationId: String

        public var companyId: Int

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case courierPartnerId = "courier_partner_id"

            case applicationId = "application_id"

            case companyId = "company_id"

            case success
        }

        public init(applicationId: String, companyId: Int, courierPartnerId: Int? = nil, success: Bool) {
            self.courierPartnerId = courierPartnerId

            self.applicationId = applicationId

            self.companyId = companyId

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                courierPartnerId = try container.decode(Int.self, forKey: .courierPartnerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(courierPartnerId, forKey: .courierPartnerId)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
