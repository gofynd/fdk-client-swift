

import Foundation
public extension PlatformClient {
    /*
         Model: JobConfig
         Used By: Inventory
     */

    class JobConfig: Codable {
        public var id: Int?

        public var jobCode: String?

        public var taskType: String?

        public var syncDelay: Int?

        public var cronExpression: String?

        public var storeFilter: StoreFilter?

        public var processConfig: ProcessConfig?

        public var storeConfig: [StoreConfig]?

        public var properties: [String: String]?

        public var immediateFirstRun: Bool?

        public var disable: Bool?

        public var dependentJobCodes: [String]?

        public var companyConfig: [CompanyConfig]?

        public var companyIds: [Int]?

        public var taxIdentifiers: [String]?

        public var priority: String?

        public var periodThreshold: Int?

        public var periodThresholdType: String?

        public var dbConnectionProfile: DBConnectionProfile?

        public var params: [String: Any]?

        public var openTags: [String: Any]?

        public var deleteQuantityThreshold: Int?

        public var catalogMasterConfig: CatalogMasterConfig?

        public var aggregatorTypes: [String]?

        public var integrationType: String?

        public var minPrice: Double?

        public var audit: Audit?

        public var version: Int?

        public var alias: String?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case jobCode = "job_code"

            case taskType = "task_type"

            case syncDelay = "sync_delay"

            case cronExpression = "cron_expression"

            case storeFilter = "store_filter"

            case processConfig = "process_config"

            case storeConfig = "store_config"

            case properties

            case immediateFirstRun = "immediate_first_run"

            case disable

            case dependentJobCodes = "dependent_job_codes"

            case companyConfig = "company_config"

            case companyIds = "company_ids"

            case taxIdentifiers = "tax_identifiers"

            case priority

            case periodThreshold = "period_threshold"

            case periodThresholdType = "period_threshold_type"

            case dbConnectionProfile = "db_connection_profile"

            case params

            case openTags = "open_tags"

            case deleteQuantityThreshold = "delete_quantity_threshold"

            case catalogMasterConfig = "catalog_master_config"

            case aggregatorTypes = "aggregator_types"

            case integrationType = "integration_type"

            case minPrice = "min_price"

            case audit

            case version

            case alias
        }

        public init(aggregatorTypes: [String]? = nil, alias: String? = nil, audit: Audit? = nil, catalogMasterConfig: CatalogMasterConfig? = nil, companyConfig: [CompanyConfig]? = nil, companyIds: [Int]? = nil, cronExpression: String? = nil, dbConnectionProfile: DBConnectionProfile? = nil, deleteQuantityThreshold: Int? = nil, dependentJobCodes: [String]? = nil, disable: Bool? = nil, immediateFirstRun: Bool? = nil, integrationType: String? = nil, jobCode: String? = nil, minPrice: Double? = nil, openTags: [String: Any]? = nil, params: [String: Any]? = nil, periodThreshold: Int? = nil, periodThresholdType: String? = nil, priority: String? = nil, processConfig: ProcessConfig? = nil, properties: [String: String]? = nil, storeConfig: [StoreConfig]? = nil, storeFilter: StoreFilter? = nil, syncDelay: Int? = nil, taskType: String? = nil, taxIdentifiers: [String]? = nil, version: Int? = nil, id: Int? = nil) {
            self.id = id

            self.jobCode = jobCode

            self.taskType = taskType

            self.syncDelay = syncDelay

            self.cronExpression = cronExpression

            self.storeFilter = storeFilter

            self.processConfig = processConfig

            self.storeConfig = storeConfig

            self.properties = properties

            self.immediateFirstRun = immediateFirstRun

            self.disable = disable

            self.dependentJobCodes = dependentJobCodes

            self.companyConfig = companyConfig

            self.companyIds = companyIds

            self.taxIdentifiers = taxIdentifiers

            self.priority = priority

            self.periodThreshold = periodThreshold

            self.periodThresholdType = periodThresholdType

            self.dbConnectionProfile = dbConnectionProfile

            self.params = params

            self.openTags = openTags

            self.deleteQuantityThreshold = deleteQuantityThreshold

            self.catalogMasterConfig = catalogMasterConfig

            self.aggregatorTypes = aggregatorTypes

            self.integrationType = integrationType

            self.minPrice = minPrice

            self.audit = audit

            self.version = version

            self.alias = alias
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                jobCode = try container.decode(String.self, forKey: .jobCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taskType = try container.decode(String.self, forKey: .taskType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                syncDelay = try container.decode(Int.self, forKey: .syncDelay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cronExpression = try container.decode(String.self, forKey: .cronExpression)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeFilter = try container.decode(StoreFilter.self, forKey: .storeFilter)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                processConfig = try container.decode(ProcessConfig.self, forKey: .processConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeConfig = try container.decode([StoreConfig].self, forKey: .storeConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                properties = try container.decode([String: String].self, forKey: .properties)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                immediateFirstRun = try container.decode(Bool.self, forKey: .immediateFirstRun)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                disable = try container.decode(Bool.self, forKey: .disable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dependentJobCodes = try container.decode([String].self, forKey: .dependentJobCodes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyConfig = try container.decode([CompanyConfig].self, forKey: .companyConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyIds = try container.decode([Int].self, forKey: .companyIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxIdentifiers = try container.decode([String].self, forKey: .taxIdentifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priority = try container.decode(String.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                periodThreshold = try container.decode(Int.self, forKey: .periodThreshold)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                periodThresholdType = try container.decode(String.self, forKey: .periodThresholdType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dbConnectionProfile = try container.decode(DBConnectionProfile.self, forKey: .dbConnectionProfile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                params = try container.decode([String: Any].self, forKey: .params)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                openTags = try container.decode([String: Any].self, forKey: .openTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deleteQuantityThreshold = try container.decode(Int.self, forKey: .deleteQuantityThreshold)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                catalogMasterConfig = try container.decode(CatalogMasterConfig.self, forKey: .catalogMasterConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregatorTypes = try container.decode([String].self, forKey: .aggregatorTypes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                integrationType = try container.decode(String.self, forKey: .integrationType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                minPrice = try container.decode(Double.self, forKey: .minPrice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                audit = try container.decode(Audit.self, forKey: .audit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                version = try container.decode(Int.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                alias = try container.decode(String.self, forKey: .alias)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(jobCode, forKey: .jobCode)

            try? container.encodeIfPresent(taskType, forKey: .taskType)

            try? container.encodeIfPresent(syncDelay, forKey: .syncDelay)

            try? container.encodeIfPresent(cronExpression, forKey: .cronExpression)

            try? container.encodeIfPresent(storeFilter, forKey: .storeFilter)

            try? container.encodeIfPresent(processConfig, forKey: .processConfig)

            try? container.encodeIfPresent(storeConfig, forKey: .storeConfig)

            try? container.encodeIfPresent(properties, forKey: .properties)

            try? container.encodeIfPresent(immediateFirstRun, forKey: .immediateFirstRun)

            try? container.encodeIfPresent(disable, forKey: .disable)

            try? container.encodeIfPresent(dependentJobCodes, forKey: .dependentJobCodes)

            try? container.encodeIfPresent(companyConfig, forKey: .companyConfig)

            try? container.encodeIfPresent(companyIds, forKey: .companyIds)

            try? container.encodeIfPresent(taxIdentifiers, forKey: .taxIdentifiers)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(periodThreshold, forKey: .periodThreshold)

            try? container.encodeIfPresent(periodThresholdType, forKey: .periodThresholdType)

            try? container.encodeIfPresent(dbConnectionProfile, forKey: .dbConnectionProfile)

            try? container.encodeIfPresent(params, forKey: .params)

            try? container.encodeIfPresent(openTags, forKey: .openTags)

            try? container.encodeIfPresent(deleteQuantityThreshold, forKey: .deleteQuantityThreshold)

            try? container.encodeIfPresent(catalogMasterConfig, forKey: .catalogMasterConfig)

            try? container.encodeIfPresent(aggregatorTypes, forKey: .aggregatorTypes)

            try? container.encodeIfPresent(integrationType, forKey: .integrationType)

            try? container.encodeIfPresent(minPrice, forKey: .minPrice)

            try? container.encodeIfPresent(audit, forKey: .audit)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(alias, forKey: .alias)
        }
    }
}
