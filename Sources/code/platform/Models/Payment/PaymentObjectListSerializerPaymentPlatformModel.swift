

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var paymentMode: String

        public var collectedBy: String

        public var currency: String

        public var paymentGateway: String

        public var paymentId: String?

        public var modifiedOn: String

        public var currentStatus: String

        public var createdOn: String

        public var userObject: [String: Any]

        public var refundObject: [String: Any]?

        public var id: String

        public var amountInPaisa: String

        public var allStatus: [String]

        public var applicationId: String

        public var companyId: String

        public var aggregatorPaymentObject: [String: Any]?

        public var refundedBy: String

        public var paymentModeIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case paymentMode = "payment_mode"

            case collectedBy = "collected_by"

            case currency

            case paymentGateway = "payment_gateway"

            case paymentId = "payment_id"

            case modifiedOn = "modified_on"

            case currentStatus = "current_status"

            case createdOn = "created_on"

            case userObject = "user_object"

            case refundObject = "refund_object"

            case id

            case amountInPaisa = "amount_in_paisa"

            case allStatus = "all_status"

            case applicationId = "application_id"

            case companyId = "company_id"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case refundedBy = "refunded_by"

            case paymentModeIdentifier = "payment_mode_identifier"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.paymentMode = paymentMode

            self.collectedBy = collectedBy

            self.currency = currency

            self.paymentGateway = paymentGateway

            self.paymentId = paymentId

            self.modifiedOn = modifiedOn

            self.currentStatus = currentStatus

            self.createdOn = createdOn

            self.userObject = userObject

            self.refundObject = refundObject

            self.id = id

            self.amountInPaisa = amountInPaisa

            self.allStatus = allStatus

            self.applicationId = applicationId

            self.companyId = companyId

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.refundedBy = refundedBy

            self.paymentModeIdentifier = paymentModeIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            currency = try container.decode(String.self, forKey: .currency)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            companyId = try container.decode(String.self, forKey: .companyId)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)
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

        public var collectedBy: String

        public var currency: String

        public var paymentGateway: String

        public var paymentId: String?

        public var modifiedOn: String

        public var currentStatus: String

        public var createdOn: String

        public var userObject: [String: Any]

        public var refundObject: [String: Any]?

        public var id: String

        public var amountInPaisa: String

        public var allStatus: [String]

        public var applicationId: String

        public var companyId: String

        public var aggregatorPaymentObject: [String: Any]?

        public var refundedBy: String

        public var paymentModeIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case paymentMode = "payment_mode"

            case collectedBy = "collected_by"

            case currency

            case paymentGateway = "payment_gateway"

            case paymentId = "payment_id"

            case modifiedOn = "modified_on"

            case currentStatus = "current_status"

            case createdOn = "created_on"

            case userObject = "user_object"

            case refundObject = "refund_object"

            case id

            case amountInPaisa = "amount_in_paisa"

            case allStatus = "all_status"

            case applicationId = "application_id"

            case companyId = "company_id"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case refundedBy = "refunded_by"

            case paymentModeIdentifier = "payment_mode_identifier"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.paymentMode = paymentMode

            self.collectedBy = collectedBy

            self.currency = currency

            self.paymentGateway = paymentGateway

            self.paymentId = paymentId

            self.modifiedOn = modifiedOn

            self.currentStatus = currentStatus

            self.createdOn = createdOn

            self.userObject = userObject

            self.refundObject = refundObject

            self.id = id

            self.amountInPaisa = amountInPaisa

            self.allStatus = allStatus

            self.applicationId = applicationId

            self.companyId = companyId

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.refundedBy = refundedBy

            self.paymentModeIdentifier = paymentModeIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            currency = try container.decode(String.self, forKey: .currency)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            companyId = try container.decode(String.self, forKey: .companyId)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)
        }
    }
}
