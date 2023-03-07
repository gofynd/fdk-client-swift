

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var companyId: Int

        public var unitPrice: Double

        public var fyndStoreId: String

        public var sellerIdentifier: String

        public var storeId: Int

        public var quantity: Int

        public var modifiedOn: String

        public var affiliateStoreId: String

        public var affiliateMeta: [String: Any]

        public var priceMarked: Double

        public var sku: String

        public var itemSize: String

        public var pdfLinks: MarketPlacePdf?

        public var hsnCodeId: String

        public var deliveryCharge: Double

        public var discount: Double

        public var transferPrice: Int

        public var amountPaid: Double

        public var itemId: Int

        public var priceEffective: Double

        public var identifier: [String: Any]

        public var id: String

        public var avlQty: Int

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case unitPrice = "unit_price"

            case fyndStoreId = "fynd_store_id"

            case sellerIdentifier = "seller_identifier"

            case storeId = "store_id"

            case quantity

            case modifiedOn = "modified_on"

            case affiliateStoreId = "affiliate_store_id"

            case affiliateMeta = "affiliate_meta"

            case priceMarked = "price_marked"

            case sku

            case itemSize = "item_size"

            case pdfLinks = "pdf_links"

            case hsnCodeId = "hsn_code_id"

            case deliveryCharge = "delivery_charge"

            case discount

            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"

            case itemId = "item_id"

            case priceEffective = "price_effective"

            case identifier

            case id = "_id"

            case avlQty = "avl_qty"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.companyId = companyId

            self.unitPrice = unitPrice

            self.fyndStoreId = fyndStoreId

            self.sellerIdentifier = sellerIdentifier

            self.storeId = storeId

            self.quantity = quantity

            self.modifiedOn = modifiedOn

            self.affiliateStoreId = affiliateStoreId

            self.affiliateMeta = affiliateMeta

            self.priceMarked = priceMarked

            self.sku = sku

            self.itemSize = itemSize

            self.pdfLinks = pdfLinks

            self.hsnCodeId = hsnCodeId

            self.deliveryCharge = deliveryCharge

            self.discount = discount

            self.transferPrice = transferPrice

            self.amountPaid = amountPaid

            self.itemId = itemId

            self.priceEffective = priceEffective

            self.identifier = identifier

            self.id = id

            self.avlQty = avlQty
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sku = try container.decode(String.self, forKey: .sku)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            discount = try container.decode(Double.self, forKey: .discount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            id = try container.decode(String.self, forKey: .id)

            avlQty = try container.decode(Int.self, forKey: .avlQty)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var companyId: Int

        public var unitPrice: Double

        public var fyndStoreId: String

        public var sellerIdentifier: String

        public var storeId: Int

        public var quantity: Int

        public var modifiedOn: String

        public var affiliateStoreId: String

        public var affiliateMeta: [String: Any]

        public var priceMarked: Double

        public var sku: String

        public var itemSize: String

        public var pdfLinks: MarketPlacePdf?

        public var hsnCodeId: String

        public var deliveryCharge: Double

        public var discount: Double

        public var transferPrice: Int

        public var amountPaid: Double

        public var itemId: Int

        public var priceEffective: Double

        public var identifier: [String: Any]

        public var id: String

        public var avlQty: Int

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case unitPrice = "unit_price"

            case fyndStoreId = "fynd_store_id"

            case sellerIdentifier = "seller_identifier"

            case storeId = "store_id"

            case quantity

            case modifiedOn = "modified_on"

            case affiliateStoreId = "affiliate_store_id"

            case affiliateMeta = "affiliate_meta"

            case priceMarked = "price_marked"

            case sku

            case itemSize = "item_size"

            case pdfLinks = "pdf_links"

            case hsnCodeId = "hsn_code_id"

            case deliveryCharge = "delivery_charge"

            case discount

            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"

            case itemId = "item_id"

            case priceEffective = "price_effective"

            case identifier

            case id = "_id"

            case avlQty = "avl_qty"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.companyId = companyId

            self.unitPrice = unitPrice

            self.fyndStoreId = fyndStoreId

            self.sellerIdentifier = sellerIdentifier

            self.storeId = storeId

            self.quantity = quantity

            self.modifiedOn = modifiedOn

            self.affiliateStoreId = affiliateStoreId

            self.affiliateMeta = affiliateMeta

            self.priceMarked = priceMarked

            self.sku = sku

            self.itemSize = itemSize

            self.pdfLinks = pdfLinks

            self.hsnCodeId = hsnCodeId

            self.deliveryCharge = deliveryCharge

            self.discount = discount

            self.transferPrice = transferPrice

            self.amountPaid = amountPaid

            self.itemId = itemId

            self.priceEffective = priceEffective

            self.identifier = identifier

            self.id = id

            self.avlQty = avlQty
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sku = try container.decode(String.self, forKey: .sku)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            discount = try container.decode(Double.self, forKey: .discount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            id = try container.decode(String.self, forKey: .id)

            avlQty = try container.decode(Int.self, forKey: .avlQty)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)
        }
    }
}
