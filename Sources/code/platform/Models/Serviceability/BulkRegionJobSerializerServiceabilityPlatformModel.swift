

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: BulkRegionJobSerializer
         Used By: Serviceability
     */

    class BulkRegionJobSerializer: Codable {
        public var batchId: String

        public var fileUrl: String

        public var action: String

        public var countryIsoCode: String?

        public var jobAction: String

        public enum CodingKeys: String, CodingKey {
            case batchId = "batch_id"

            case fileUrl = "file_url"

            case action

            case countryIsoCode = "country_iso_code"

            case jobAction = "job_action"
        }

        public init(action: String, batchId: String, countryIsoCode: String? = nil, fileUrl: String, jobAction: String) {
            self.batchId = batchId

            self.fileUrl = fileUrl

            self.action = action

            self.countryIsoCode = countryIsoCode

            self.jobAction = jobAction
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            batchId = try container.decode(String.self, forKey: .batchId)

            fileUrl = try container.decode(String.self, forKey: .fileUrl)

            action = try container.decode(String.self, forKey: .action)

            do {
                countryIsoCode = try container.decode(String.self, forKey: .countryIsoCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            jobAction = try container.decode(String.self, forKey: .jobAction)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(fileUrl, forKey: .fileUrl)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(countryIsoCode, forKey: .countryIsoCode)

            try? container.encodeIfPresent(jobAction, forKey: .jobAction)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: BulkRegionJobSerializer
         Used By: Serviceability
     */

    class BulkRegionJobSerializer: Codable {
        public var batchId: String

        public var fileUrl: String

        public var action: String

        public var countryIsoCode: String?

        public var jobAction: String

        public enum CodingKeys: String, CodingKey {
            case batchId = "batch_id"

            case fileUrl = "file_url"

            case action

            case countryIsoCode = "country_iso_code"

            case jobAction = "job_action"
        }

        public init(action: String, batchId: String, countryIsoCode: String? = nil, fileUrl: String, jobAction: String) {
            self.batchId = batchId

            self.fileUrl = fileUrl

            self.action = action

            self.countryIsoCode = countryIsoCode

            self.jobAction = jobAction
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            batchId = try container.decode(String.self, forKey: .batchId)

            fileUrl = try container.decode(String.self, forKey: .fileUrl)

            action = try container.decode(String.self, forKey: .action)

            do {
                countryIsoCode = try container.decode(String.self, forKey: .countryIsoCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            jobAction = try container.decode(String.self, forKey: .jobAction)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(fileUrl, forKey: .fileUrl)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(countryIsoCode, forKey: .countryIsoCode)

            try? container.encodeIfPresent(jobAction, forKey: .jobAction)
        }
    }
}
