

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var identifier: [String: Any]

        public var priceEffective: Double

        public var affiliateStoreId: String

        public var modifiedOn: String

        public var companyId: Int

        public var amountPaid: Double

        public var transferPrice: Int

        public var fyndStoreId: String

        public var sellerIdentifier: String

        public var itemSize: String

        public var avlQty: Int

        public var unitPrice: Double

        public var priceMarked: Double

        public var hsnCodeId: String

        public var pdfLinks: MarketPlacePdf?

        public var discount: Double

        public var id: String

        public var itemId: Int

        public var storeId: Int

        public var quantity: Int

        public var sku: String

        public var deliveryCharge: Double

        public var affiliateMeta: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case identifier

            case priceEffective = "price_effective"

            case affiliateStoreId = "affiliate_store_id"

            case modifiedOn = "modified_on"

            case companyId = "company_id"

            case amountPaid = "amount_paid"

            case transferPrice = "transfer_price"

            case fyndStoreId = "fynd_store_id"

            case sellerIdentifier = "seller_identifier"

            case itemSize = "item_size"

            case avlQty = "avl_qty"

            case unitPrice = "unit_price"

            case priceMarked = "price_marked"

            case hsnCodeId = "hsn_code_id"

            case pdfLinks = "pdf_links"

            case discount

            case id = "_id"

            case itemId = "item_id"

            case storeId = "store_id"

            case quantity

            case sku

            case deliveryCharge = "delivery_charge"

            case affiliateMeta = "affiliate_meta"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.identifier = identifier

            self.priceEffective = priceEffective

            self.affiliateStoreId = affiliateStoreId

            self.modifiedOn = modifiedOn

            self.companyId = companyId

            self.amountPaid = amountPaid

            self.transferPrice = transferPrice

            self.fyndStoreId = fyndStoreId

            self.sellerIdentifier = sellerIdentifier

            self.itemSize = itemSize

            self.avlQty = avlQty

            self.unitPrice = unitPrice

            self.priceMarked = priceMarked

            self.hsnCodeId = hsnCodeId

            self.pdfLinks = pdfLinks

            self.discount = discount

            self.id = id

            self.itemId = itemId

            self.storeId = storeId

            self.quantity = quantity

            self.sku = sku

            self.deliveryCharge = deliveryCharge

            self.affiliateMeta = affiliateMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            companyId = try container.decode(Int.self, forKey: .companyId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Double.self, forKey: .discount)

            id = try container.decode(String.self, forKey: .id)

            itemId = try container.decode(Int.self, forKey: .itemId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sku = try container.decode(String.self, forKey: .sku)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var identifier: [String: Any]

        public var priceEffective: Double

        public var affiliateStoreId: String

        public var modifiedOn: String

        public var companyId: Int

        public var amountPaid: Double

        public var transferPrice: Int

        public var fyndStoreId: String

        public var sellerIdentifier: String

        public var itemSize: String

        public var avlQty: Int

        public var unitPrice: Double

        public var priceMarked: Double

        public var hsnCodeId: String

        public var pdfLinks: MarketPlacePdf?

        public var discount: Double

        public var id: String

        public var itemId: Int

        public var storeId: Int

        public var quantity: Int

        public var sku: String

        public var deliveryCharge: Double

        public var affiliateMeta: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case identifier

            case priceEffective = "price_effective"

            case affiliateStoreId = "affiliate_store_id"

            case modifiedOn = "modified_on"

            case companyId = "company_id"

            case amountPaid = "amount_paid"

            case transferPrice = "transfer_price"

            case fyndStoreId = "fynd_store_id"

            case sellerIdentifier = "seller_identifier"

            case itemSize = "item_size"

            case avlQty = "avl_qty"

            case unitPrice = "unit_price"

            case priceMarked = "price_marked"

            case hsnCodeId = "hsn_code_id"

            case pdfLinks = "pdf_links"

            case discount

            case id = "_id"

            case itemId = "item_id"

            case storeId = "store_id"

            case quantity

            case sku

            case deliveryCharge = "delivery_charge"

            case affiliateMeta = "affiliate_meta"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.identifier = identifier

            self.priceEffective = priceEffective

            self.affiliateStoreId = affiliateStoreId

            self.modifiedOn = modifiedOn

            self.companyId = companyId

            self.amountPaid = amountPaid

            self.transferPrice = transferPrice

            self.fyndStoreId = fyndStoreId

            self.sellerIdentifier = sellerIdentifier

            self.itemSize = itemSize

            self.avlQty = avlQty

            self.unitPrice = unitPrice

            self.priceMarked = priceMarked

            self.hsnCodeId = hsnCodeId

            self.pdfLinks = pdfLinks

            self.discount = discount

            self.id = id

            self.itemId = itemId

            self.storeId = storeId

            self.quantity = quantity

            self.sku = sku

            self.deliveryCharge = deliveryCharge

            self.affiliateMeta = affiliateMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            companyId = try container.decode(Int.self, forKey: .companyId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Double.self, forKey: .discount)

            id = try container.decode(String.self, forKey: .id)

            itemId = try container.decode(Int.self, forKey: .itemId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sku = try container.decode(String.self, forKey: .sku)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)
        }
    }
}
