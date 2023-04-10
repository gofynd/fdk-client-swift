

import Foundation
public extension ApplicationClient.FileStorage {
    /*
         Model: BulkUploadResponse
         Used By: FileStorage
     */
    class BulkUploadResponse: Codable {
        public var trackingUrl: String

        public var task: CopyFileTask

        public enum CodingKeys: String, CodingKey {
            case trackingUrl = "tracking_url"

            case task
        }

        public init(task: CopyFileTask, trackingUrl: String) {
            self.trackingUrl = trackingUrl

            self.task = task
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            trackingUrl = try container.decode(String.self, forKey: .trackingUrl)

            task = try container.decode(CopyFileTask.self, forKey: .task)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(task, forKey: .task)
        }
    }
}
