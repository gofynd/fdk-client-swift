

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var refundObject: [String: Any]?

        public var paymentGateway: String

        public var currentStatus: String

        public var refundedBy: String

        public var paymentMode: String

        public var paymentModeIdentifier: String

        public var collectedBy: String

        public var modifiedOn: String

        public var id: String

        public var currency: String

        public var paymentId: String?

        public var userObject: [String: Any]

        public var aggregatorPaymentObject: [String: Any]?

        public var applicationId: String

        public var allStatus: [String]

        public var companyId: String

        public var amountInPaisa: String

        public var createdOn: String

        public enum CodingKeys: String, CodingKey {
            case refundObject = "refund_object"

            case paymentGateway = "payment_gateway"

            case currentStatus = "current_status"

            case refundedBy = "refunded_by"

            case paymentMode = "payment_mode"

            case paymentModeIdentifier = "payment_mode_identifier"

            case collectedBy = "collected_by"

            case modifiedOn = "modified_on"

            case id

            case currency

            case paymentId = "payment_id"

            case userObject = "user_object"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case applicationId = "application_id"

            case allStatus = "all_status"

            case companyId = "company_id"

            case amountInPaisa = "amount_in_paisa"

            case createdOn = "created_on"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.refundObject = refundObject

            self.paymentGateway = paymentGateway

            self.currentStatus = currentStatus

            self.refundedBy = refundedBy

            self.paymentMode = paymentMode

            self.paymentModeIdentifier = paymentModeIdentifier

            self.collectedBy = collectedBy

            self.modifiedOn = modifiedOn

            self.id = id

            self.currency = currency

            self.paymentId = paymentId

            self.userObject = userObject

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.applicationId = applicationId

            self.allStatus = allStatus

            self.companyId = companyId

            self.amountInPaisa = amountInPaisa

            self.createdOn = createdOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            id = try container.decode(String.self, forKey: .id)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            companyId = try container.decode(String.self, forKey: .companyId)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            createdOn = try container.decode(String.self, forKey: .createdOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var refundObject: [String: Any]?

        public var paymentGateway: String

        public var currentStatus: String

        public var refundedBy: String

        public var paymentMode: String

        public var paymentModeIdentifier: String

        public var collectedBy: String

        public var modifiedOn: String

        public var id: String

        public var currency: String

        public var paymentId: String?

        public var userObject: [String: Any]

        public var aggregatorPaymentObject: [String: Any]?

        public var applicationId: String

        public var allStatus: [String]

        public var companyId: String

        public var amountInPaisa: String

        public var createdOn: String

        public enum CodingKeys: String, CodingKey {
            case refundObject = "refund_object"

            case paymentGateway = "payment_gateway"

            case currentStatus = "current_status"

            case refundedBy = "refunded_by"

            case paymentMode = "payment_mode"

            case paymentModeIdentifier = "payment_mode_identifier"

            case collectedBy = "collected_by"

            case modifiedOn = "modified_on"

            case id

            case currency

            case paymentId = "payment_id"

            case userObject = "user_object"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case applicationId = "application_id"

            case allStatus = "all_status"

            case companyId = "company_id"

            case amountInPaisa = "amount_in_paisa"

            case createdOn = "created_on"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.refundObject = refundObject

            self.paymentGateway = paymentGateway

            self.currentStatus = currentStatus

            self.refundedBy = refundedBy

            self.paymentMode = paymentMode

            self.paymentModeIdentifier = paymentModeIdentifier

            self.collectedBy = collectedBy

            self.modifiedOn = modifiedOn

            self.id = id

            self.currency = currency

            self.paymentId = paymentId

            self.userObject = userObject

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.applicationId = applicationId

            self.allStatus = allStatus

            self.companyId = companyId

            self.amountInPaisa = amountInPaisa

            self.createdOn = createdOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            id = try container.decode(String.self, forKey: .id)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            companyId = try container.decode(String.self, forKey: .companyId)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            createdOn = try container.decode(String.self, forKey: .createdOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        }
    }
}
