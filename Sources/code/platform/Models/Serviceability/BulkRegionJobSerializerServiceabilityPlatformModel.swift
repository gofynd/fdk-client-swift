

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: BulkRegionJobSerializer
         Used By: Serviceability
     */

    class BulkRegionJobSerializer: Codable {
        public var countryIsoCode: String?

        public var fileUrl: String

        public var action: String

        public var batchId: String

        public var jobAction: String

        public enum CodingKeys: String, CodingKey {
            case countryIsoCode = "country_iso_code"

            case fileUrl = "file_url"

            case action

            case batchId = "batch_id"

            case jobAction = "job_action"
        }

        public init(action: String, batchId: String, countryIsoCode: String? = nil, fileUrl: String, jobAction: String) {
            self.countryIsoCode = countryIsoCode

            self.fileUrl = fileUrl

            self.action = action

            self.batchId = batchId

            self.jobAction = jobAction
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                countryIsoCode = try container.decode(String.self, forKey: .countryIsoCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fileUrl = try container.decode(String.self, forKey: .fileUrl)

            action = try container.decode(String.self, forKey: .action)

            batchId = try container.decode(String.self, forKey: .batchId)

            jobAction = try container.decode(String.self, forKey: .jobAction)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(countryIsoCode, forKey: .countryIsoCode)

            try? container.encodeIfPresent(fileUrl, forKey: .fileUrl)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

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
        public var countryIsoCode: String?

        public var fileUrl: String

        public var action: String

        public var batchId: String

        public var jobAction: String

        public enum CodingKeys: String, CodingKey {
            case countryIsoCode = "country_iso_code"

            case fileUrl = "file_url"

            case action

            case batchId = "batch_id"

            case jobAction = "job_action"
        }

        public init(action: String, batchId: String, countryIsoCode: String? = nil, fileUrl: String, jobAction: String) {
            self.countryIsoCode = countryIsoCode

            self.fileUrl = fileUrl

            self.action = action

            self.batchId = batchId

            self.jobAction = jobAction
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                countryIsoCode = try container.decode(String.self, forKey: .countryIsoCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fileUrl = try container.decode(String.self, forKey: .fileUrl)

            action = try container.decode(String.self, forKey: .action)

            batchId = try container.decode(String.self, forKey: .batchId)

            jobAction = try container.decode(String.self, forKey: .jobAction)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(countryIsoCode, forKey: .countryIsoCode)

            try? container.encodeIfPresent(fileUrl, forKey: .fileUrl)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(jobAction, forKey: .jobAction)
        }
    }
}
