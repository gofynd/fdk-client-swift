

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var paymentId: String?

        public var currentStatus: String

        public var companyId: String

        public var collectedBy: String

        public var currency: String

        public var paymentMode: String

        public var createdOn: String

        public var paymentModeIdentifier: String

        public var refundedBy: String

        public var modifiedOn: String

        public var aggregatorPaymentObject: [String: Any]?

        public var userObject: [String: Any]

        public var id: String

        public var amountInPaisa: String

        public var paymentGateway: String

        public var refundObject: [String: Any]?

        public var allStatus: [String]

        public var applicationId: String

        public enum CodingKeys: String, CodingKey {
            case paymentId = "payment_id"

            case currentStatus = "current_status"

            case companyId = "company_id"

            case collectedBy = "collected_by"

            case currency

            case paymentMode = "payment_mode"

            case createdOn = "created_on"

            case paymentModeIdentifier = "payment_mode_identifier"

            case refundedBy = "refunded_by"

            case modifiedOn = "modified_on"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case userObject = "user_object"

            case id

            case amountInPaisa = "amount_in_paisa"

            case paymentGateway = "payment_gateway"

            case refundObject = "refund_object"

            case allStatus = "all_status"

            case applicationId = "application_id"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.paymentId = paymentId

            self.currentStatus = currentStatus

            self.companyId = companyId

            self.collectedBy = collectedBy

            self.currency = currency

            self.paymentMode = paymentMode

            self.createdOn = createdOn

            self.paymentModeIdentifier = paymentModeIdentifier

            self.refundedBy = refundedBy

            self.modifiedOn = modifiedOn

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.userObject = userObject

            self.id = id

            self.amountInPaisa = amountInPaisa

            self.paymentGateway = paymentGateway

            self.refundObject = refundObject

            self.allStatus = allStatus

            self.applicationId = applicationId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            companyId = try container.decode(String.self, forKey: .companyId)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            currency = try container.decode(String.self, forKey: .currency)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            id = try container.decode(String.self, forKey: .id)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            allStatus = try container.decode([String].self, forKey: .allStatus)

            applicationId = try container.decode(String.self, forKey: .applicationId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var paymentId: String?

        public var currentStatus: String

        public var companyId: String

        public var collectedBy: String

        public var currency: String

        public var paymentMode: String

        public var createdOn: String

        public var paymentModeIdentifier: String

        public var refundedBy: String

        public var modifiedOn: String

        public var aggregatorPaymentObject: [String: Any]?

        public var userObject: [String: Any]

        public var id: String

        public var amountInPaisa: String

        public var paymentGateway: String

        public var refundObject: [String: Any]?

        public var allStatus: [String]

        public var applicationId: String

        public enum CodingKeys: String, CodingKey {
            case paymentId = "payment_id"

            case currentStatus = "current_status"

            case companyId = "company_id"

            case collectedBy = "collected_by"

            case currency

            case paymentMode = "payment_mode"

            case createdOn = "created_on"

            case paymentModeIdentifier = "payment_mode_identifier"

            case refundedBy = "refunded_by"

            case modifiedOn = "modified_on"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case userObject = "user_object"

            case id

            case amountInPaisa = "amount_in_paisa"

            case paymentGateway = "payment_gateway"

            case refundObject = "refund_object"

            case allStatus = "all_status"

            case applicationId = "application_id"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.paymentId = paymentId

            self.currentStatus = currentStatus

            self.companyId = companyId

            self.collectedBy = collectedBy

            self.currency = currency

            self.paymentMode = paymentMode

            self.createdOn = createdOn

            self.paymentModeIdentifier = paymentModeIdentifier

            self.refundedBy = refundedBy

            self.modifiedOn = modifiedOn

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.userObject = userObject

            self.id = id

            self.amountInPaisa = amountInPaisa

            self.paymentGateway = paymentGateway

            self.refundObject = refundObject

            self.allStatus = allStatus

            self.applicationId = applicationId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            companyId = try container.decode(String.self, forKey: .companyId)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            currency = try container.decode(String.self, forKey: .currency)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            id = try container.decode(String.self, forKey: .id)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            allStatus = try container.decode([String].self, forKey: .allStatus)

            applicationId = try container.decode(String.self, forKey: .applicationId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
        }
    }
}
