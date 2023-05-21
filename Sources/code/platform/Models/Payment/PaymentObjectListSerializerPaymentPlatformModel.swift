

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var paymentMode: String

        public var modifiedOn: String

        public var amountInPaisa: String

        public var paymentModeIdentifier: String

        public var currency: String

        public var aggregatorPaymentObject: [String: Any]?

        public var paymentGateway: String

        public var refundedBy: String

        public var userObject: [String: Any]

        public var companyId: String

        public var id: String

        public var paymentId: String?

        public var allStatus: [String]

        public var createdOn: String

        public var refundObject: [String: Any]?

        public var collectedBy: String

        public var applicationId: String

        public var currentStatus: String

        public enum CodingKeys: String, CodingKey {
            case paymentMode = "payment_mode"

            case modifiedOn = "modified_on"

            case amountInPaisa = "amount_in_paisa"

            case paymentModeIdentifier = "payment_mode_identifier"

            case currency

            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentGateway = "payment_gateway"

            case refundedBy = "refunded_by"

            case userObject = "user_object"

            case companyId = "company_id"

            case id

            case paymentId = "payment_id"

            case allStatus = "all_status"

            case createdOn = "created_on"

            case refundObject = "refund_object"

            case collectedBy = "collected_by"

            case applicationId = "application_id"

            case currentStatus = "current_status"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.paymentMode = paymentMode

            self.modifiedOn = modifiedOn

            self.amountInPaisa = amountInPaisa

            self.paymentModeIdentifier = paymentModeIdentifier

            self.currency = currency

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentGateway = paymentGateway

            self.refundedBy = refundedBy

            self.userObject = userObject

            self.companyId = companyId

            self.id = id

            self.paymentId = paymentId

            self.allStatus = allStatus

            self.createdOn = createdOn

            self.refundObject = refundObject

            self.collectedBy = collectedBy

            self.applicationId = applicationId

            self.currentStatus = currentStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            companyId = try container.decode(String.self, forKey: .companyId)

            id = try container.decode(String.self, forKey: .id)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            allStatus = try container.decode([String].self, forKey: .allStatus)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var paymentMode: String

        public var modifiedOn: String

        public var amountInPaisa: String

        public var paymentModeIdentifier: String

        public var currency: String

        public var aggregatorPaymentObject: [String: Any]?

        public var paymentGateway: String

        public var refundedBy: String

        public var userObject: [String: Any]

        public var companyId: String

        public var id: String

        public var paymentId: String?

        public var allStatus: [String]

        public var createdOn: String

        public var refundObject: [String: Any]?

        public var collectedBy: String

        public var applicationId: String

        public var currentStatus: String

        public enum CodingKeys: String, CodingKey {
            case paymentMode = "payment_mode"

            case modifiedOn = "modified_on"

            case amountInPaisa = "amount_in_paisa"

            case paymentModeIdentifier = "payment_mode_identifier"

            case currency

            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentGateway = "payment_gateway"

            case refundedBy = "refunded_by"

            case userObject = "user_object"

            case companyId = "company_id"

            case id

            case paymentId = "payment_id"

            case allStatus = "all_status"

            case createdOn = "created_on"

            case refundObject = "refund_object"

            case collectedBy = "collected_by"

            case applicationId = "application_id"

            case currentStatus = "current_status"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.paymentMode = paymentMode

            self.modifiedOn = modifiedOn

            self.amountInPaisa = amountInPaisa

            self.paymentModeIdentifier = paymentModeIdentifier

            self.currency = currency

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentGateway = paymentGateway

            self.refundedBy = refundedBy

            self.userObject = userObject

            self.companyId = companyId

            self.id = id

            self.paymentId = paymentId

            self.allStatus = allStatus

            self.createdOn = createdOn

            self.refundObject = refundObject

            self.collectedBy = collectedBy

            self.applicationId = applicationId

            self.currentStatus = currentStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            companyId = try container.decode(String.self, forKey: .companyId)

            id = try container.decode(String.self, forKey: .id)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            allStatus = try container.decode([String].self, forKey: .allStatus)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
        }
    }
}
