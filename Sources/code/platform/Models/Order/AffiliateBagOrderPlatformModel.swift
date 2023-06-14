

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sku: String

        public var pdfLinks: MarketPlacePdf?

        public var hsnCodeId: String

        public var storeId: Int

        public var itemSize: String

        public var affiliateMeta: [String: Any]

        public var id: String

        public var amountPaid: Double

        public var priceMarked: Double

        public var affiliateStoreId: String

        public var avlQty: Int

        public var unitPrice: Double

        public var transferPrice: Int

        public var companyId: Int

        public var identifier: [String: Any]

        public var fyndStoreId: String

        public var modifiedOn: String

        public var discount: Double

        public var itemId: Int

        public var quantity: Int

        public var deliveryCharge: Double

        public var priceEffective: Double

        public var sellerIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case sku

            case pdfLinks = "pdf_links"

            case hsnCodeId = "hsn_code_id"

            case storeId = "store_id"

            case itemSize = "item_size"

            case affiliateMeta = "affiliate_meta"

            case id = "_id"

            case amountPaid = "amount_paid"

            case priceMarked = "price_marked"

            case affiliateStoreId = "affiliate_store_id"

            case avlQty = "avl_qty"

            case unitPrice = "unit_price"

            case transferPrice = "transfer_price"

            case companyId = "company_id"

            case identifier

            case fyndStoreId = "fynd_store_id"

            case modifiedOn = "modified_on"

            case discount

            case itemId = "item_id"

            case quantity

            case deliveryCharge = "delivery_charge"

            case priceEffective = "price_effective"

            case sellerIdentifier = "seller_identifier"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sku = sku

            self.pdfLinks = pdfLinks

            self.hsnCodeId = hsnCodeId

            self.storeId = storeId

            self.itemSize = itemSize

            self.affiliateMeta = affiliateMeta

            self.id = id

            self.amountPaid = amountPaid

            self.priceMarked = priceMarked

            self.affiliateStoreId = affiliateStoreId

            self.avlQty = avlQty

            self.unitPrice = unitPrice

            self.transferPrice = transferPrice

            self.companyId = companyId

            self.identifier = identifier

            self.fyndStoreId = fyndStoreId

            self.modifiedOn = modifiedOn

            self.discount = discount

            self.itemId = itemId

            self.quantity = quantity

            self.deliveryCharge = deliveryCharge

            self.priceEffective = priceEffective

            self.sellerIdentifier = sellerIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sku = try container.decode(String.self, forKey: .sku)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            id = try container.decode(String.self, forKey: .id)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            discount = try container.decode(Double.self, forKey: .discount)

            itemId = try container.decode(Int.self, forKey: .itemId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sku: String

        public var pdfLinks: MarketPlacePdf?

        public var hsnCodeId: String

        public var storeId: Int

        public var itemSize: String

        public var affiliateMeta: [String: Any]

        public var id: String

        public var amountPaid: Double

        public var priceMarked: Double

        public var affiliateStoreId: String

        public var avlQty: Int

        public var unitPrice: Double

        public var transferPrice: Int

        public var companyId: Int

        public var identifier: [String: Any]

        public var fyndStoreId: String

        public var modifiedOn: String

        public var discount: Double

        public var itemId: Int

        public var quantity: Int

        public var deliveryCharge: Double

        public var priceEffective: Double

        public var sellerIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case sku

            case pdfLinks = "pdf_links"

            case hsnCodeId = "hsn_code_id"

            case storeId = "store_id"

            case itemSize = "item_size"

            case affiliateMeta = "affiliate_meta"

            case id = "_id"

            case amountPaid = "amount_paid"

            case priceMarked = "price_marked"

            case affiliateStoreId = "affiliate_store_id"

            case avlQty = "avl_qty"

            case unitPrice = "unit_price"

            case transferPrice = "transfer_price"

            case companyId = "company_id"

            case identifier

            case fyndStoreId = "fynd_store_id"

            case modifiedOn = "modified_on"

            case discount

            case itemId = "item_id"

            case quantity

            case deliveryCharge = "delivery_charge"

            case priceEffective = "price_effective"

            case sellerIdentifier = "seller_identifier"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sku = sku

            self.pdfLinks = pdfLinks

            self.hsnCodeId = hsnCodeId

            self.storeId = storeId

            self.itemSize = itemSize

            self.affiliateMeta = affiliateMeta

            self.id = id

            self.amountPaid = amountPaid

            self.priceMarked = priceMarked

            self.affiliateStoreId = affiliateStoreId

            self.avlQty = avlQty

            self.unitPrice = unitPrice

            self.transferPrice = transferPrice

            self.companyId = companyId

            self.identifier = identifier

            self.fyndStoreId = fyndStoreId

            self.modifiedOn = modifiedOn

            self.discount = discount

            self.itemId = itemId

            self.quantity = quantity

            self.deliveryCharge = deliveryCharge

            self.priceEffective = priceEffective

            self.sellerIdentifier = sellerIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sku = try container.decode(String.self, forKey: .sku)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            id = try container.decode(String.self, forKey: .id)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            discount = try container.decode(Double.self, forKey: .discount)

            itemId = try container.decode(Int.self, forKey: .itemId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
        }
    }
}
