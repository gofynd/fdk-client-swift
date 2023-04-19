

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var affiliateMeta: [String: Any]

        public var amountPaid: Double

        public var deliveryCharge: Double

        public var itemSize: String

        public var itemId: Int

        public var modifiedOn: String

        public var sku: String

        public var priceMarked: Double

        public var priceEffective: Double

        public var transferPrice: Int

        public var discount: Double

        public var storeId: Int

        public var avlQty: Int

        public var companyId: Int

        public var unitPrice: Double

        public var pdfLinks: MarketPlacePdf?

        public var quantity: Int

        public var fyndStoreId: String

        public var sellerIdentifier: String

        public var id: String

        public var identifier: [String: Any]

        public var affiliateStoreId: String

        public var hsnCodeId: String

        public enum CodingKeys: String, CodingKey {
            case affiliateMeta = "affiliate_meta"

            case amountPaid = "amount_paid"

            case deliveryCharge = "delivery_charge"

            case itemSize = "item_size"

            case itemId = "item_id"

            case modifiedOn = "modified_on"

            case sku

            case priceMarked = "price_marked"

            case priceEffective = "price_effective"

            case transferPrice = "transfer_price"

            case discount

            case storeId = "store_id"

            case avlQty = "avl_qty"

            case companyId = "company_id"

            case unitPrice = "unit_price"

            case pdfLinks = "pdf_links"

            case quantity

            case fyndStoreId = "fynd_store_id"

            case sellerIdentifier = "seller_identifier"

            case id = "_id"

            case identifier

            case affiliateStoreId = "affiliate_store_id"

            case hsnCodeId = "hsn_code_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.affiliateMeta = affiliateMeta

            self.amountPaid = amountPaid

            self.deliveryCharge = deliveryCharge

            self.itemSize = itemSize

            self.itemId = itemId

            self.modifiedOn = modifiedOn

            self.sku = sku

            self.priceMarked = priceMarked

            self.priceEffective = priceEffective

            self.transferPrice = transferPrice

            self.discount = discount

            self.storeId = storeId

            self.avlQty = avlQty

            self.companyId = companyId

            self.unitPrice = unitPrice

            self.pdfLinks = pdfLinks

            self.quantity = quantity

            self.fyndStoreId = fyndStoreId

            self.sellerIdentifier = sellerIdentifier

            self.id = id

            self.identifier = identifier

            self.affiliateStoreId = affiliateStoreId

            self.hsnCodeId = hsnCodeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            itemId = try container.decode(Int.self, forKey: .itemId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sku = try container.decode(String.self, forKey: .sku)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            discount = try container.decode(Double.self, forKey: .discount)

            storeId = try container.decode(Int.self, forKey: .storeId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            companyId = try container.decode(Int.self, forKey: .companyId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            id = try container.decode(String.self, forKey: .id)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var affiliateMeta: [String: Any]

        public var amountPaid: Double

        public var deliveryCharge: Double

        public var itemSize: String

        public var itemId: Int

        public var modifiedOn: String

        public var sku: String

        public var priceMarked: Double

        public var priceEffective: Double

        public var transferPrice: Int

        public var discount: Double

        public var storeId: Int

        public var avlQty: Int

        public var companyId: Int

        public var unitPrice: Double

        public var pdfLinks: MarketPlacePdf?

        public var quantity: Int

        public var fyndStoreId: String

        public var sellerIdentifier: String

        public var id: String

        public var identifier: [String: Any]

        public var affiliateStoreId: String

        public var hsnCodeId: String

        public enum CodingKeys: String, CodingKey {
            case affiliateMeta = "affiliate_meta"

            case amountPaid = "amount_paid"

            case deliveryCharge = "delivery_charge"

            case itemSize = "item_size"

            case itemId = "item_id"

            case modifiedOn = "modified_on"

            case sku

            case priceMarked = "price_marked"

            case priceEffective = "price_effective"

            case transferPrice = "transfer_price"

            case discount

            case storeId = "store_id"

            case avlQty = "avl_qty"

            case companyId = "company_id"

            case unitPrice = "unit_price"

            case pdfLinks = "pdf_links"

            case quantity

            case fyndStoreId = "fynd_store_id"

            case sellerIdentifier = "seller_identifier"

            case id = "_id"

            case identifier

            case affiliateStoreId = "affiliate_store_id"

            case hsnCodeId = "hsn_code_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.affiliateMeta = affiliateMeta

            self.amountPaid = amountPaid

            self.deliveryCharge = deliveryCharge

            self.itemSize = itemSize

            self.itemId = itemId

            self.modifiedOn = modifiedOn

            self.sku = sku

            self.priceMarked = priceMarked

            self.priceEffective = priceEffective

            self.transferPrice = transferPrice

            self.discount = discount

            self.storeId = storeId

            self.avlQty = avlQty

            self.companyId = companyId

            self.unitPrice = unitPrice

            self.pdfLinks = pdfLinks

            self.quantity = quantity

            self.fyndStoreId = fyndStoreId

            self.sellerIdentifier = sellerIdentifier

            self.id = id

            self.identifier = identifier

            self.affiliateStoreId = affiliateStoreId

            self.hsnCodeId = hsnCodeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            itemId = try container.decode(Int.self, forKey: .itemId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sku = try container.decode(String.self, forKey: .sku)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            discount = try container.decode(Double.self, forKey: .discount)

            storeId = try container.decode(Int.self, forKey: .storeId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            companyId = try container.decode(Int.self, forKey: .companyId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            id = try container.decode(String.self, forKey: .id)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)
        }
    }
}
