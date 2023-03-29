

import Foundation
public extension ApplicationClient {
    /*
         Model: CopyFileTask
         Used By: FileStorage
     */
    class CopyFileTask: Codable {
        public var id: String

        public var name: String

        public var data: BulkRequest

        public var opts: Opts

        public var progress: Int

        public var delay: Int

        public var timestamp: Int

        public var attemptsMade: Int

        public var stacktrace: [String]?

        public var finishedOn: Int

        public var processedOn: Int

        public enum CodingKeys: String, CodingKey {
            case id

            case name

            case data

            case opts

            case progress

            case delay

            case timestamp

            case attemptsMade = "attempts_made"

            case stacktrace

            case finishedOn = "finished_on"

            case processedOn = "processed_on"
        }

        public init(attemptsMade: Int, data: BulkRequest, delay: Int, finishedOn: Int, id: String, name: String, opts: Opts, processedOn: Int, progress: Int, stacktrace: [String]? = nil, timestamp: Int) {
            self.id = id

            self.name = name

            self.data = data

            self.opts = opts

            self.progress = progress

            self.delay = delay

            self.timestamp = timestamp

            self.attemptsMade = attemptsMade

            self.stacktrace = stacktrace

            self.finishedOn = finishedOn

            self.processedOn = processedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            name = try container.decode(String.self, forKey: .name)

            data = try container.decode(BulkRequest.self, forKey: .data)

            opts = try container.decode(Opts.self, forKey: .opts)

            progress = try container.decode(Int.self, forKey: .progress)

            delay = try container.decode(Int.self, forKey: .delay)

            timestamp = try container.decode(Int.self, forKey: .timestamp)

            attemptsMade = try container.decode(Int.self, forKey: .attemptsMade)

            do {
                stacktrace = try container.decode([String].self, forKey: .stacktrace)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            finishedOn = try container.decode(Int.self, forKey: .finishedOn)

            processedOn = try container.decode(Int.self, forKey: .processedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(opts, forKey: .opts)

            try? container.encodeIfPresent(progress, forKey: .progress)

            try? container.encodeIfPresent(delay, forKey: .delay)

            try? container.encodeIfPresent(timestamp, forKey: .timestamp)

            try? container.encodeIfPresent(attemptsMade, forKey: .attemptsMade)

            try? container.encodeIfPresent(stacktrace, forKey: .stacktrace)

            try? container.encodeIfPresent(finishedOn, forKey: .finishedOn)

            try? container.encodeIfPresent(processedOn, forKey: .processedOn)
        }
    }
}
