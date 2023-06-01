

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var unitPrice: Double

        public var priceMarked: Double

        public var transferPrice: Int

        public var pdfLinks: MarketPlacePdf?

        public var avlQty: Int

        public var itemId: Int

        public var sellerIdentifier: String

        public var quantity: Int

        public var sku: String

        public var identifier: [String: Any]

        public var itemSize: String

        public var priceEffective: Double

        public var discount: Double

        public var fyndStoreId: String

        public var storeId: Int

        public var modifiedOn: String

        public var deliveryCharge: Double

        public var id: String

        public var affiliateStoreId: String

        public var amountPaid: Double

        public var companyId: Int

        public var hsnCodeId: String

        public var affiliateMeta: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case unitPrice = "unit_price"

            case priceMarked = "price_marked"

            case transferPrice = "transfer_price"

            case pdfLinks = "pdf_links"

            case avlQty = "avl_qty"

            case itemId = "item_id"

            case sellerIdentifier = "seller_identifier"

            case quantity

            case sku

            case identifier

            case itemSize = "item_size"

            case priceEffective = "price_effective"

            case discount

            case fyndStoreId = "fynd_store_id"

            case storeId = "store_id"

            case modifiedOn = "modified_on"

            case deliveryCharge = "delivery_charge"

            case id = "_id"

            case affiliateStoreId = "affiliate_store_id"

            case amountPaid = "amount_paid"

            case companyId = "company_id"

            case hsnCodeId = "hsn_code_id"

            case affiliateMeta = "affiliate_meta"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.unitPrice = unitPrice

            self.priceMarked = priceMarked

            self.transferPrice = transferPrice

            self.pdfLinks = pdfLinks

            self.avlQty = avlQty

            self.itemId = itemId

            self.sellerIdentifier = sellerIdentifier

            self.quantity = quantity

            self.sku = sku

            self.identifier = identifier

            self.itemSize = itemSize

            self.priceEffective = priceEffective

            self.discount = discount

            self.fyndStoreId = fyndStoreId

            self.storeId = storeId

            self.modifiedOn = modifiedOn

            self.deliveryCharge = deliveryCharge

            self.id = id

            self.affiliateStoreId = affiliateStoreId

            self.amountPaid = amountPaid

            self.companyId = companyId

            self.hsnCodeId = hsnCodeId

            self.affiliateMeta = affiliateMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            itemId = try container.decode(Int.self, forKey: .itemId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sku = try container.decode(String.self, forKey: .sku)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            discount = try container.decode(Double.self, forKey: .discount)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            id = try container.decode(String.self, forKey: .id)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            companyId = try container.decode(Int.self, forKey: .companyId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

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
        public var unitPrice: Double

        public var priceMarked: Double

        public var transferPrice: Int

        public var pdfLinks: MarketPlacePdf?

        public var avlQty: Int

        public var itemId: Int

        public var sellerIdentifier: String

        public var quantity: Int

        public var sku: String

        public var identifier: [String: Any]

        public var itemSize: String

        public var priceEffective: Double

        public var discount: Double

        public var fyndStoreId: String

        public var storeId: Int

        public var modifiedOn: String

        public var deliveryCharge: Double

        public var id: String

        public var affiliateStoreId: String

        public var amountPaid: Double

        public var companyId: Int

        public var hsnCodeId: String

        public var affiliateMeta: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case unitPrice = "unit_price"

            case priceMarked = "price_marked"

            case transferPrice = "transfer_price"

            case pdfLinks = "pdf_links"

            case avlQty = "avl_qty"

            case itemId = "item_id"

            case sellerIdentifier = "seller_identifier"

            case quantity

            case sku

            case identifier

            case itemSize = "item_size"

            case priceEffective = "price_effective"

            case discount

            case fyndStoreId = "fynd_store_id"

            case storeId = "store_id"

            case modifiedOn = "modified_on"

            case deliveryCharge = "delivery_charge"

            case id = "_id"

            case affiliateStoreId = "affiliate_store_id"

            case amountPaid = "amount_paid"

            case companyId = "company_id"

            case hsnCodeId = "hsn_code_id"

            case affiliateMeta = "affiliate_meta"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.unitPrice = unitPrice

            self.priceMarked = priceMarked

            self.transferPrice = transferPrice

            self.pdfLinks = pdfLinks

            self.avlQty = avlQty

            self.itemId = itemId

            self.sellerIdentifier = sellerIdentifier

            self.quantity = quantity

            self.sku = sku

            self.identifier = identifier

            self.itemSize = itemSize

            self.priceEffective = priceEffective

            self.discount = discount

            self.fyndStoreId = fyndStoreId

            self.storeId = storeId

            self.modifiedOn = modifiedOn

            self.deliveryCharge = deliveryCharge

            self.id = id

            self.affiliateStoreId = affiliateStoreId

            self.amountPaid = amountPaid

            self.companyId = companyId

            self.hsnCodeId = hsnCodeId

            self.affiliateMeta = affiliateMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            itemId = try container.decode(Int.self, forKey: .itemId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sku = try container.decode(String.self, forKey: .sku)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            discount = try container.decode(Double.self, forKey: .discount)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            id = try container.decode(String.self, forKey: .id)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            companyId = try container.decode(Int.self, forKey: .companyId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)
        }
    }
}
