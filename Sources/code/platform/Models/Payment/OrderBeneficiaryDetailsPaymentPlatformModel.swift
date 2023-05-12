

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var mobile: String?

        public var delightsUserName: String?

        public var modifiedOn: String

        public var createdOn: String

        public var displayName: String

        public var title: String

        public var isActive: Bool

        public var id: Int

        public var accountHolder: String

        public var comment: String?

        public var address: String

        public var transferMode: String

        public var accountNo: String

        public var branchName: String?

        public var beneficiaryId: String

        public var email: String

        public var ifscCode: String

        public var subtitle: String

        public var bankName: String

        public enum CodingKeys: String, CodingKey {
            case mobile

            case delightsUserName = "delights_user_name"

            case modifiedOn = "modified_on"

            case createdOn = "created_on"

            case displayName = "display_name"

            case title

            case isActive = "is_active"

            case id

            case accountHolder = "account_holder"

            case comment

            case address

            case transferMode = "transfer_mode"

            case accountNo = "account_no"

            case branchName = "branch_name"

            case beneficiaryId = "beneficiary_id"

            case email

            case ifscCode = "ifsc_code"

            case subtitle

            case bankName = "bank_name"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.mobile = mobile

            self.delightsUserName = delightsUserName

            self.modifiedOn = modifiedOn

            self.createdOn = createdOn

            self.displayName = displayName

            self.title = title

            self.isActive = isActive

            self.id = id

            self.accountHolder = accountHolder

            self.comment = comment

            self.address = address

            self.transferMode = transferMode

            self.accountNo = accountNo

            self.branchName = branchName

            self.beneficiaryId = beneficiaryId

            self.email = email

            self.ifscCode = ifscCode

            self.subtitle = subtitle

            self.bankName = bankName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            displayName = try container.decode(String.self, forKey: .displayName)

            title = try container.decode(String.self, forKey: .title)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            id = try container.decode(Int.self, forKey: .id)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(String.self, forKey: .address)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            email = try container.decode(String.self, forKey: .email)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            bankName = try container.decode(String.self, forKey: .bankName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(bankName, forKey: .bankName)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var mobile: String?

        public var delightsUserName: String?

        public var modifiedOn: String

        public var createdOn: String

        public var displayName: String

        public var title: String

        public var isActive: Bool

        public var id: Int

        public var accountHolder: String

        public var comment: String?

        public var address: String

        public var transferMode: String

        public var accountNo: String

        public var branchName: String?

        public var beneficiaryId: String

        public var email: String

        public var ifscCode: String

        public var subtitle: String

        public var bankName: String

        public enum CodingKeys: String, CodingKey {
            case mobile

            case delightsUserName = "delights_user_name"

            case modifiedOn = "modified_on"

            case createdOn = "created_on"

            case displayName = "display_name"

            case title

            case isActive = "is_active"

            case id

            case accountHolder = "account_holder"

            case comment

            case address

            case transferMode = "transfer_mode"

            case accountNo = "account_no"

            case branchName = "branch_name"

            case beneficiaryId = "beneficiary_id"

            case email

            case ifscCode = "ifsc_code"

            case subtitle

            case bankName = "bank_name"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.mobile = mobile

            self.delightsUserName = delightsUserName

            self.modifiedOn = modifiedOn

            self.createdOn = createdOn

            self.displayName = displayName

            self.title = title

            self.isActive = isActive

            self.id = id

            self.accountHolder = accountHolder

            self.comment = comment

            self.address = address

            self.transferMode = transferMode

            self.accountNo = accountNo

            self.branchName = branchName

            self.beneficiaryId = beneficiaryId

            self.email = email

            self.ifscCode = ifscCode

            self.subtitle = subtitle

            self.bankName = bankName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            displayName = try container.decode(String.self, forKey: .displayName)

            title = try container.decode(String.self, forKey: .title)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            id = try container.decode(Int.self, forKey: .id)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(String.self, forKey: .address)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            email = try container.decode(String.self, forKey: .email)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            bankName = try container.decode(String.self, forKey: .bankName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(bankName, forKey: .bankName)
        }
    }
}
